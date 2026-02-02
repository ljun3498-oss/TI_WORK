using System;
using System.Collections.Generic;
using System.Linq;  // 用于Average()等LINQ方法
using System.Windows;
using System.Windows.Threading;
using OxyPlot;
using OxyPlot.Series;
using OxyPlot.Axes;

namespace MotionAPI_Test
{
    public partial class MainWindow : Window
    {
        // Motion axis (pointer to avoid P/Invoke sync issues)
        private IntPtr axisPtr = IntPtr.Zero;
        
        // Simulation timers
        private DispatcherTimer simTimer;
        private DispatcherTimer plotTimer;
        
        // Command sequence executor
        private DispatcherTimer sequenceTimer;
        private List<CommandSequenceItem> commandSequence;
        private int currentCommandIndex = 0;
        private double sequenceStartTime = 0.0;
        private bool isSequenceRunning = false;
        private bool waitingForMotionComplete = false;  // 等待最后一条运动命令完成
        
        // Time and data recording
        private double simTime = 0.0;
        private int profileUpdateCounter = 0;
        private const int PROFILE_UPDATE_DIVIDER = 1;  // Update trajectory every 1 position loop cycles
        private List<DataPoint> positionData = new List<DataPoint>();
        private List<DataPoint> velocityData = new List<DataPoint>();
        private List<DataPoint> cmdVelData = new List<DataPoint>();
        private List<DataPoint> accelerationData = new List<DataPoint>();
        private List<DataPoint> jerkData = new List<DataPoint>();
        private List<DataPoint> cmdPosData = new List<DataPoint>();
        private List<DataPoint> targetPosData = new List<DataPoint>();
        
        // OxyPlot models
        public PlotModel PositionPlotModel { get; private set; }
        public PlotModel VelocityPlotModel { get; private set; }
        public PlotModel AccelerationPlotModel { get; private set; }
        public PlotModel JerkPlotModel { get; private set; }
        
        // Performance monitoring
        private DateTime lastUpdateTime;
        private int updateCounter = 0;
        
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            
            InitializePlots();
            InitializeAxis();
            InitializeTimers();
        }

        private void InitializePlots()
        {
            // Position plot
            PositionPlotModel = new PlotModel { Title = "Position Tracking" };
            PositionPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Bottom, Title = "Time (s)" });
            PositionPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Left, Title = "Position (counts)" });
            
            var targetPosSeries = new LineSeries
            {
                Title = "Target",
                Color = OxyColors.Orange,
                StrokeThickness = 1,
                LineStyle = LineStyle.Dash
            };
            var cmdPosSeries = new LineSeries
            {
                Title = "Command (Profile)",
                Color = OxyColors.Blue,
                StrokeThickness = 2
            };
            var actPosSeries = new LineSeries
            {
                Title = "Actual (Motor)",
                Color = OxyColors.Red,
                StrokeThickness = 1.5
            };
            PositionPlotModel.Series.Add(targetPosSeries);
            PositionPlotModel.Series.Add(cmdPosSeries);
            PositionPlotModel.Series.Add(actPosSeries);
            
            // Velocity plot
            VelocityPlotModel = new PlotModel { Title = "Velocity Curve (Command=Blue, Actual=Red)" };
            VelocityPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Bottom, Title = "Time (s)" });
            VelocityPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Left, Title = "Velocity (counts/s)" });
            
            var cmdVelSeries = new LineSeries
            {
                Title = "Command (Trap)",
                Color = OxyColors.Blue,
                StrokeThickness = 2
            };
            var actVelSeries = new LineSeries
            {
                Title = "Actual (Filtered)",
                Color = OxyColors.Red,
                StrokeThickness = 1.5
            };
            VelocityPlotModel.Series.Add(cmdVelSeries);
            VelocityPlotModel.Series.Add(actVelSeries);
            
            // Acceleration plot
            AccelerationPlotModel = new PlotModel { Title = "Acceleration Curve" };
            AccelerationPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Bottom, Title = "Time (s)" });
            AccelerationPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Left, Title = "Acceleration (counts/s²)" });
            
            var accelSeries = new LineSeries
            {
                Title = "Acceleration",
                Color = OxyColors.Orange,
                StrokeThickness = 2
            };
            AccelerationPlotModel.Series.Add(accelSeries);
            
            // Jerk plot (S-Curve专用)
            JerkPlotModel = new PlotModel { Title = "Jerk Curve (S-Curve Only)" };
            JerkPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Bottom, Title = "Time (s)" });
            JerkPlotModel.Axes.Add(new LinearAxis { Position = AxisPosition.Left, Title = "Jerk (counts/s³)" });
            
            var jerkSeries = new LineSeries
            {
                Title = "Jerk",
                Color = OxyColors.Purple,
                StrokeThickness = 2
            };
            JerkPlotModel.Series.Add(jerkSeries);
        }

        private void InitializeAxis()
        {
            try
            {
                // Create motion axis (pointer-based to avoid P/Invoke sync issues)
                axisPtr = MotionControlAPI.MotionAxis_create(1, MotionControlAPI.AxisType.Real);
                
                if (axisPtr == IntPtr.Zero)
                {
                    throw new Exception("MotionAxis_create failed");
                }
                
                // Fix profileUpdateTs (P/Invoke sync workaround)
                MotionControlAPI.MotionAxis_setProfileUpdateTs(axisPtr, 0.010f);
                
                // Add motor (motorID=1, gearRatio=1.0)
                MotionControlAPI.MotionAxis_addMotor(axisPtr, 1, 1.0f);
                
                // Get actual values using getter functions
                ushort actualMotorCount = MotionControlAPI.MotionAxis_getMotorCount(axisPtr);
                MotionControlAPI.AxisType actualAxisType = MotionControlAPI.MotionAxis_getAxisType(axisPtr);
                
                LogMessage("Motion axis initialized successfully");
                LogMessage($"Axis ID: 1, Type: {actualAxisType}, Motor count: {actualMotorCount}");
                
                // Set default motion parameters
                MotionControlAPI.MotionAxis_setMotionParams(axisPtr, 500.0f, 2000.0f, 2000.0f);
                
                // Note: Profile type defaults to Trapezoidal in C code
                // S-Curve functions will be called when user selects S-Curve type
                LogMessage("Motion parameters set (profile type: default Trapezoidal)");
                
                // Set default PID parameters
                MotionControlAPI.MotionAxis_setPIDGains(axisPtr, 0, 10.0f, 0.5f, 0.1f);
                
                // Set following error limits
                MotionControlAPI.MotionAxis_setFollowingErrorLimit(axisPtr, 0, 100.0f, 500.0f);
            }
            catch (Exception ex)
            {
                LogMessage($"Error: Initialization failed - {ex.Message}");
                MessageBox.Show($"Initialization failed!\n\n{ex.Message}\n\nEnsure motion_control.dll is in program directory.", 
                    "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void InitializeTimers()
        {
            // Simulation timer (high frequency)
            simTimer = new DispatcherTimer();
            simTimer.Interval = TimeSpan.FromMilliseconds(1); // 1ms = 1000Hz
            simTimer.Tick += SimTimer_Tick;
            
            // Plot update timer (low frequency)
            plotTimer = new DispatcherTimer();
            plotTimer.Interval = TimeSpan.FromMilliseconds(50); // 20Hz
            plotTimer.Tick += PlotTimer_Tick;
            plotTimer.Start();
            
            lastUpdateTime = DateTime.Now;
        }

        private void SimTimer_Tick(object sender, EventArgs e)
        {
            try
            {
                if (axisPtr == IntPtr.Zero)
                    return;

                // Get actual values using getter functions
                ushort actualMotorCount = MotionControlAPI.MotionAxis_getMotorCount(axisPtr);
                float actualCmdPos = MotionControlAPI.MotionAxis_getCmdPosition(axisPtr);
                float actualActPos = MotionControlAPI.MotionAxis_getActPosition(axisPtr);
                float actualActVel = MotionControlAPI.MotionAxis_getActVelocity(axisPtr);
                
                // 1. Update trajectory (every 10 cycles)
                profileUpdateCounter++;
                if (profileUpdateCounter >= PROFILE_UPDATE_DIVIDER)
                {
                    profileUpdateCounter = 0;
                    
                    // Diagnostics
                    var axisState = MotionControlAPI.MotionAxis_getAxisState(axisPtr);
                    ushort bufferBefore = MotionControlAPI.MotionAxis_getBufferCount(axisPtr);
                    var profileState = MotionControlAPI.MotionAxis_getProfileState(axisPtr);
                    float totalTime = MotionControlAPI.MotionAxis_getTotalTime(axisPtr);
                    float elapsedTime = MotionControlAPI.MotionAxis_getElapsedTime(axisPtr);
                    float profileUpdateTs = MotionControlAPI.MotionAxis_getProfileUpdateTs(axisPtr);
                    ushort freeSpace = MotionControlAPI.MotionAxis_getBufferFreeSpace(axisPtr);
                    
                    if (axisState == MotionControlAPI.AxisState.Moving || 
                        axisState == MotionControlAPI.AxisState.Stopping)
                    {
                        MotionControlAPI.MotionAxis_updateProfile(axisPtr);
                        
                        ushort bufferAfter = MotionControlAPI.MotionAxis_getBufferCount(axisPtr);
                        float elapsedTimeAfter = MotionControlAPI.MotionAxis_getElapsedTime(axisPtr);
                        
                        if (bufferAfter > bufferBefore)
                        {
                            LogMessage($"OK: Buffer {bufferBefore} -> {bufferAfter}, " +
                                      $"Time={elapsedTimeAfter:F3}s/{totalTime:F3}s, State={profileState}");
                        }
                        else
                        {
                            LogMessage($"WARN: Buffer={bufferBefore}, freeSpace={freeSpace}, " +
                                      $"Time(before)={elapsedTime:F3}s, Time(after)={elapsedTimeAfter:F3}s, " +
                                      $"TotalTime={totalTime:F3}s, dt={profileUpdateTs:F3}s, State={profileState}");
                        }
                    }
                }
                
                // 2. Update position control (1ms cycle)
                MotionControlAPI.MotionAxis_updateControl(axisPtr);
                
                // Update command position/velocity after control update
                actualCmdPos = MotionControlAPI.MotionAxis_getCmdPosition(axisPtr);
                float actualCmdVelForPlot = MotionControlAPI.MotionAxis_getCmdVelocity(axisPtr);
                
                // 3. Simulate motor feedback (ideal unity gain model for testing)
                if (actualMotorCount > 0)
                {
                    // Unity gain model: actual position = command position (no lag)
                    // This makes it easy to verify buffer and trajectory planning
                    // Red curve (actual) will perfectly overlap blue curve (command)
                    
                    // Get command velocity for display
                    float actualCmdVel = MotionControlAPI.MotionAxis_getCmdVelocity(axisPtr);
                    
                    // Set actual = command (ideal tracking)
                    float newPos = actualCmdPos;
                    float newVel = actualCmdVel;
                    
                    MotionControlAPI.MotionAxis_updateFeedback(axisPtr, 0, newPos, newVel);
                }
                
                // 4. Record data
                double motorPos = 0.0;
                double motorVel = 0.0;
                
                if (actualMotorCount > 0)
                {
                    motorPos = MotionControlAPI.MotorDrive_getActPosition(axisPtr, 0);
                    motorVel = MotionControlAPI.MotorDrive_getActVelocity(axisPtr, 0);
                }
                
                // Get acceleration from motion control DLL (instead of calculating from velocity difference)
                // This ensures accuracy for variable time steps
                double accel = MotionControlAPI.MotorDrive_getActAcceleration(axisPtr, 0);
                
                // Get jerk directly from motion control buffer (accurate, no filtering needed)
                // Buffer中存储的是实际的S曲线jerk值，比数值微分准确得多
                double jerk = MotionControlAPI.MotorDrive_getActJerk(axisPtr, 0);
                
                // Get target position for display
                float actualTargetPos = MotionControlAPI.MotionAxis_getTargetPosition(axisPtr);
                
                // Debug logging for first few samples during motion
                if (updateCounter < 500 && updateCounter % 100 == 0)
                {
                    LogMessage($"[{simTime:F3}s] CmdPos={actualCmdPos:F2}, ActPos={motorPos:F2}, CmdVel={actualCmdVelForPlot:F2}, ActVel={motorVel:F2}, Accel={accel:F1}, Jerk={jerk:F1}");
                }
                
                // Record data (using updated command values)
                positionData.Add(new DataPoint(simTime, motorPos));
                cmdPosData.Add(new DataPoint(simTime, actualCmdPos));
                targetPosData.Add(new DataPoint(simTime, actualTargetPos));
                cmdVelData.Add(new DataPoint(simTime, actualCmdVelForPlot));
                velocityData.Add(new DataPoint(simTime, motorVel));
                accelerationData.Add(new DataPoint(simTime, accel));
                jerkData.Add(new DataPoint(simTime, jerk));
                
                // Debug: log data collection
                if (updateCounter == 0)
                {
                    LogMessage($"[DEBUG] Data collected: pos={positionData.Count}, vel={velocityData.Count}, accel={accelerationData.Count}, jerk={jerkData.Count}");
                }
                
                // Limit data points
                int maxPoints = 10000;
                if (positionData.Count > maxPoints)
                {
                    positionData.RemoveAt(0);
                    cmdPosData.RemoveAt(0);
                    targetPosData.RemoveAt(0);
                    cmdVelData.RemoveAt(0);
                    velocityData.RemoveAt(0);
                    accelerationData.RemoveAt(0);
                    jerkData.RemoveAt(0);
                }
                
                // 5. Update time
                simTime += 0.001;
                updateCounter++;
            }
            catch (Exception ex)
            {
                LogMessage($"Simulation error: {ex.Message}");
            }
        }

        private void PlotTimer_Tick(object sender, EventArgs e)
        {
            try
            {
                // Debug: check data counts
                if (positionData.Count > 0 && updateCounter % 1000 == 0)
                {
                    LogMessage($"[PLOT] Updating plots with {positionData.Count} points");
                }
                
                // Update plots
                var targetPosSeries = PositionPlotModel.Series[0] as LineSeries;
                var cmdPosSeries = PositionPlotModel.Series[1] as LineSeries;
                var actPosSeries = PositionPlotModel.Series[2] as LineSeries;
                var cmdVelSeries = VelocityPlotModel.Series[0] as LineSeries;
                var actVelSeries = VelocityPlotModel.Series[1] as LineSeries;
                var accelSeries = AccelerationPlotModel.Series[0] as LineSeries;
                var jerkSeries = JerkPlotModel.Series[0] as LineSeries;
                
                if (targetPosSeries != null) targetPosSeries.Points.Clear();
                if (cmdPosSeries != null) cmdPosSeries.Points.Clear();
                if (actPosSeries != null) actPosSeries.Points.Clear();
                if (cmdVelSeries != null) cmdVelSeries.Points.Clear();
                if (actVelSeries != null) actVelSeries.Points.Clear();
                if (accelSeries != null) accelSeries.Points.Clear();
                if (jerkSeries != null) jerkSeries.Points.Clear();
                
                if (targetPosSeries != null) targetPosSeries.Points.AddRange(targetPosData);
                if (cmdPosSeries != null) cmdPosSeries.Points.AddRange(cmdPosData);
                if (actPosSeries != null) actPosSeries.Points.AddRange(positionData);
                if (cmdVelSeries != null) cmdVelSeries.Points.AddRange(cmdVelData);
                if (actVelSeries != null) actVelSeries.Points.AddRange(velocityData);
                if (accelSeries != null) accelSeries.Points.AddRange(accelerationData);
                if (jerkSeries != null) jerkSeries.Points.AddRange(jerkData);
                
                PositionPlotModel.InvalidatePlot(true);
                VelocityPlotModel.InvalidatePlot(true);
                AccelerationPlotModel.InvalidatePlot(true);
                JerkPlotModel.InvalidatePlot(true);
                
                // Update status display
                UpdateStatusDisplay();
                
                // Update rate
                var now = DateTime.Now;
                double elapsed = (now - lastUpdateTime).TotalSeconds;
                if (elapsed > 0)
                {
                    int rate = (int)(updateCounter / elapsed);
                    txtStatusBar.Text = $"就绪 | 更新率: {rate} Hz";
                    lastUpdateTime = now;
                    updateCounter = 0;
                }
            }
            catch (Exception ex)
            {
                LogMessage($"Display update error: {ex.Message}");
            }
        }

        private void UpdateStatusDisplay()
        {
            if (axisPtr == IntPtr.Zero)
                return;

            // Use getter functions for all values
            ushort actualMotorCount = MotionControlAPI.MotionAxis_getMotorCount(axisPtr);
            MotionControlAPI.AxisType actualAxisType = MotionControlAPI.MotionAxis_getAxisType(axisPtr);
            MotionControlAPI.AxisState actualAxisState = MotionControlAPI.MotionAxis_getAxisState(axisPtr);
            float actualCmdPos = MotionControlAPI.MotionAxis_getCmdPosition(axisPtr);
            float actualActPos = MotionControlAPI.MotionAxis_getActPosition(axisPtr);
            float actualCmdVel = MotionControlAPI.MotionAxis_getCmdVelocity(axisPtr);
            float actualActVel = MotionControlAPI.MotionAxis_getActVelocity(axisPtr);
            float actualTargetPos = MotionControlAPI.MotionAxis_getTargetPosition(axisPtr);
            float actualTargetVel = MotionControlAPI.MotionAxis_getTargetVelocity(axisPtr);
            ushort actualBufferCount = MotionControlAPI.MotionAxis_getBufferCount(axisPtr);
            MotionControlAPI.ProfileState actualProfileState = MotionControlAPI.MotionAxis_getProfileState(axisPtr);
            
            // Axis info
            txtAxisState.Text = $"轴状态: {actualAxisState}";
            txtMotorCount.Text = $"电机数量: {actualMotorCount}";
            
            // Target values (motion goal)
            txtTargetPosDisplay.Text = $"目标位置: {actualTargetPos:F3}";
            
            // Position data
            txtAxisCmdPos.Text = $"命令: {actualCmdPos:F3}";
            txtAxisActPos.Text = $"实际: {actualActPos:F3}";
            
            // Velocity data
            txtAxisCmdVel.Text = $"命令: {actualCmdVel:F2}";
            
            // Acceleration and Jerk
            double accel = velocityData.Count > 1 ? 
                (velocityData[velocityData.Count - 1].Y - velocityData[velocityData.Count - 2].Y) / 0.001 : 0.0;
            double jerk = accelerationData.Count > 1 ?
                (accelerationData[accelerationData.Count - 1].Y - accelerationData[accelerationData.Count - 2].Y) / 0.001 : 0.0;
            txtAxisAccel.Text = $"加速度: {accel:F1}";
            txtAxisJerk.Text = $"加加速度: {jerk:F1}";
            
            // Buffer monitor
            txtBufferCount.Text = $"缓冲数量: {actualBufferCount} / 128";
            progressBuffer.Value = actualBufferCount;
            txtProfileState.Text = $"轨迹状态: {actualProfileState}";
            
            // Simulation time
            txtSimTime.Text = $"仿真时间: {simTime:F3} s";
        }

        private void LogMessage(string message)
        {
            string timestamp = DateTime.Now.ToString("HH:mm:ss.fff");
            txtLog.AppendText($"[{timestamp}] {message}\n");
            txtLog.ScrollToEnd();
        }
        
        /// <summary>
        /// 获取轴状态名称
        /// </summary>
        private string GetAxisStateName(int state)
        {
            return state switch
            {
                0 => "DISABLED",
                1 => "STANDBY",
                2 => "MOVING",
                3 => "STOPPING",
                4 => "ERROR",
                _ => $"UNKNOWN({state})"
            };
        }

        // Event handlers
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LogMessage("=== Motion Control API Test Tool Started ===");
            LogMessage("Please enable axis first, then set parameters, then send motion commands");
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            simTimer?.Stop();
            plotTimer?.Stop();
            
            if (axisPtr != IntPtr.Zero)
            {
                MotionControlAPI.MotionAxis_destroy(axisPtr);
                axisPtr = IntPtr.Zero;
            }
            
            LogMessage("=== Program exit ===");
        }

        private void BtnEnable_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MotionControlAPI.MotionAxis_enable(axisPtr);
                
                // Start simulation timer when axis is enabled
                if (!simTimer.IsEnabled)
                {
                    simTimer.Start();
                    LogMessage("仿真定时器已启动");
                }
                
                // Enable sequence buttons if sequence is configured
                if (commandSequence != null && commandSequence.Any(c => c.Enabled))
                {
                    btnStartSequence.IsEnabled = true;
                    LogMessage($"命令序列已准备（共{commandSequence.Count(c => c.Enabled)}条命令）");
                }
                
                LogMessage("轴已使能");
                txtStatusBar.Text = "轴已使能，准备运动";
            }
            catch (Exception ex)
            {
                LogMessage($"Enable failed: {ex.Message}");
            }
        }

        private void BtnDisable_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MotionControlAPI.MotionAxis_disable(axisPtr);
                simTimer.Stop();
                LogMessage("轴已禁用");
                txtStatusBar.Text = "轴已禁用";
            }
            catch (Exception ex)
            {
                LogMessage($"Disable failed: {ex.Message}");
            }
        }

        private void BtnSetParams_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                float maxVel = float.Parse(txtMaxVel.Text);
                float maxAccel = float.Parse(txtMaxAccel.Text);
                float maxDecel = float.Parse(txtMaxDecel.Text);
                
                MotionControlAPI.MotionAxis_setMotionParams(axisPtr, maxVel, maxAccel, maxDecel);
                LogMessage($"运动参数已设置: 速度={maxVel}, 加速度={maxAccel}, 减速度={maxDecel}");
                
                // 如果是S型曲线，同时设置jerkTime
                if (cmbProfileType.SelectedIndex == 1)
                {
                    try
                    {
                        float jerkTime = float.Parse(txtMaxJerk.Text);
                        MotionControlAPI.MotionAxis_setJerkTime(axisPtr, jerkTime);
                        LogMessage($"S型曲线jerkTime已设置: {jerkTime}s");
                    }
                    catch (Exception ex)
                    {
                        LogMessage($"警告: 设置jerkTime失败 - {ex.Message}");
                    }
                }
            }
            catch (Exception ex)
            {
                LogMessage($"Parameter set failed: {ex.Message}");
            }
        }

        private void BtnSetPID_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                float kp = float.Parse(txtKp.Text);
                float ki = float.Parse(txtKi.Text);
                float kd = float.Parse(txtKd.Text);
                
                MotionControlAPI.MotionAxis_setPIDGains(axisPtr, 0, kp, ki, kd);
                LogMessage($"PID params set: Kp={kp}, Ki={ki}, Kd={kd}");
            }
            catch (Exception ex)
            {
                LogMessage($"PID set failed: {ex.Message}");
            }
        }

        private void BtnMoveAbs_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                float targetPos = float.Parse(txtTargetPos.Text);
                MotionControlAPI.MotionAxis_moveAbsolute(axisPtr, targetPos);
                
                if (!simTimer.IsEnabled)
                    simTimer.Start();
                
                LogMessage($"绝对运动命令: 目标 = {targetPos}");
                txtStatusBar.Text = $"运动中, 目标 = {targetPos}";
                
                UpdateSimFrequency();
            }
            catch (Exception ex)
            {
                LogMessage($"Motion command failed: {ex.Message}");
            }
        }

        private void BtnMoveRel_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                float distance = float.Parse(txtTargetPos.Text);
                MotionControlAPI.MotionAxis_moveRelative(axisPtr, distance);
                
                if (!simTimer.IsEnabled)
                    simTimer.Start();
                
                LogMessage($"相对运动命令: 距离 = {distance}");
                txtStatusBar.Text = $"运动中, 距离 = {distance}";
                
                UpdateSimFrequency();
            }
            catch (Exception ex)
            {
                LogMessage($"Motion command failed: {ex.Message}");
            }
        }

        private void BtnStop_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MotionControlAPI.MotionAxis_stop(axisPtr);
                LogMessage("正常停止命令已发送");
                txtStatusBar.Text = "减速停止中...";
            }
            catch (Exception ex)
            {
                LogMessage($"Stop command failed: {ex.Message}");
            }
        }

        private void BtnEStop_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MotionControlAPI.MotionAxis_emergencyStop(axisPtr);
                LogMessage("紧急停止命令已发送！");
                txtStatusBar.Text = "紧急停止中！";
            }
            catch (Exception ex)
            {
                LogMessage($"E-stop command failed: {ex.Message}");
            }
        }

        private void UpdateSimFrequency()
        {
            int freq = cmbSimFreq.SelectedIndex switch
            {
                0 => 100,   // 100 Hz = 10ms
                1 => 500,   // 500 Hz = 2ms
                2 => 1000,  // 1000 Hz = 1ms
                3 => 2000,  // 2000 Hz = 0.5ms
                _ => 1000
            };
            
            simTimer.Interval = TimeSpan.FromMilliseconds(1000.0 / freq);
        }
        
        private void CmbProfileType_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            if (axisPtr == IntPtr.Zero || cmbProfileType == null)
                return;
                
            try
            {
                // 根据选择设置曲线类型
                if (cmbProfileType.SelectedIndex == 0)
                {
                    // 梯形曲线：设置jerkTime = 0
                    MotionControlAPI.MotionAxis_setJerkTime(axisPtr, 0.0f);
                    LogMessage("曲线类型已切换: 梯形曲线 (jerkTime=0)");
                    
                    // 禁用加加速度控件
                    if (lblMaxJerk != null) lblMaxJerk.IsEnabled = false;
                    if (txtMaxJerk != null) txtMaxJerk.IsEnabled = false;
                    
                    // 更新显示
                    if (txtProfileTypeDisplay != null)
                        txtProfileTypeDisplay.Text = "曲线: 梯形曲线";
                }
                else if (cmbProfileType.SelectedIndex == 1)
                {
                    // S型曲线：设置jerkTime > 0
                    // jerkTime表示从0加速到最大加速度所需的时间
                    // 默认使用0.1秒，用户可以通过txtMaxJerk输入框修改
                    float jerkTime = 0.1f;  // 默认100ms
                    if (txtMaxJerk != null && float.TryParse(txtMaxJerk.Text, out float parsedTime))
                    {
                        jerkTime = parsedTime;
                    }
                    
                    MotionControlAPI.MotionAxis_setJerkTime(axisPtr, jerkTime);
                    LogMessage($"曲线类型已切换: S型曲线 (jerkTime={jerkTime}s)");
                    
                    // 启用加加速度控件
                    if (lblMaxJerk != null) lblMaxJerk.IsEnabled = true;
                    if (txtMaxJerk != null) txtMaxJerk.IsEnabled = true;
                    
                    // 更新显示
                    if (txtProfileTypeDisplay != null)
                        txtProfileTypeDisplay.Text = "曲线: S型曲线";
                }
            }
            catch (Exception ex)
            {
                LogMessage($"曲线类型切换失败: {ex.Message}");
            }
        }
        
        private void TxtMaxJerk_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (axisPtr == IntPtr.Zero || txtMaxJerk == null || cmbProfileType == null)
                return;
            
            // 只有在S型曲线模式下才更新jerkTime
            if (cmbProfileType.SelectedIndex == 1)
            {
                if (float.TryParse(txtMaxJerk.Text, out float jerkTime) && jerkTime > 0)
                {
                    try
                    {
                        MotionControlAPI.MotionAxis_setJerkTime(axisPtr, jerkTime);
                        LogMessage($"S型曲线jerkTime已更新: {jerkTime}s");
                    }
                    catch (Exception ex)
                    {
                        LogMessage($"更新jerkTime失败: {ex.Message}");
                    }
                }
            }
        }

        // ==================== Command Sequence Executor ====================
        
        /// <summary>
        /// 打开命令序列配置器
        /// </summary>
        private void BtnConfigSequence_Click(object sender, RoutedEventArgs e)
        {
            var configWindow = new CommandSequenceWindow();
            
            // 如果已有配置，加载现有配置
            if (commandSequence != null)
            {
                configWindow.Commands.Clear();
                foreach (var cmd in commandSequence)
                {
                    configWindow.Commands.Add(new CommandSequenceItem
                    {
                        Enabled = cmd.Enabled,
                        TimePoint = cmd.TimePoint,
                        CommandType = cmd.CommandType,
                        TargetPosition = cmd.TargetPosition,
                        MaxVelocity = cmd.MaxVelocity,
                        MaxAccel = cmd.MaxAccel,
                        MaxDecel = cmd.MaxDecel,
                        EmergencyDecel = cmd.EmergencyDecel,
                        JerkTime = cmd.JerkTime,
                        Comment = cmd.Comment
                    });
                }
            }
            
            if (configWindow.ShowDialog() == true)
            {
                // 保存配置
                commandSequence = configWindow.Commands.Where(c => c.Enabled)
                                               .OrderBy(c => c.TimePoint)
                                               .ToList();
                
                LogMessage($"命令序列已配置：共{commandSequence.Count}条命令");
                
                // 如果轴已使能，启用"启动序列"按钮
                if (axisPtr != IntPtr.Zero)
                {
                    btnStartSequence.IsEnabled = true;
                }
            }
        }
        
        /// <summary>
        /// 启动命令序列执行
        /// </summary>
        private void BtnStartSequence_Click(object sender, RoutedEventArgs e)
        {
            if (commandSequence == null || commandSequence.Count == 0)
            {
                MessageBox.Show("请先配置命令序列", "提示", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            // 检查轴状态，如果未使能则自动使能
            int axisState = MotionControlAPI.MotionAxis_getState(axisPtr);
            if (axisState == 0)  // AXIS_STATE_DISABLED = 0
            {
                try
                {
                    MotionControlAPI.MotionAxis_enable(axisPtr);
                    LogMessage("轴已自动使能");
                    
                    // 启动仿真定时器
                    if (!simTimer.IsEnabled)
                    {
                        simTimer.Start();
                        LogMessage("仿真定时器已启动");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"使能轴失败: {ex.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
            }
            
            // 初始化序列执行器
            currentCommandIndex = 0;
            sequenceStartTime = simTime;
            isSequenceRunning = true;
            waitingForMotionComplete = false;
            
            // 创建序列定时器（检查频率10Hz）
            if (sequenceTimer == null)
            {
                sequenceTimer = new DispatcherTimer();
                sequenceTimer.Interval = TimeSpan.FromMilliseconds(100);  // 100ms检查一次
                sequenceTimer.Tick += SequenceTimer_Tick;
            }
            
            sequenceTimer.Start();
            
            // 更新UI状态
            btnStartSequence.IsEnabled = false;
            btnStopSequence.IsEnabled = true;
            btnMoveAbs.IsEnabled = false;
            btnMoveRel.IsEnabled = false;
            btnStop.IsEnabled = false;
            btnEStop.IsEnabled = false;
            
            LogMessage($"========== 命令序列开始执行 ==========");
            LogMessage($"序列开始时间: {sequenceStartTime:F3}s");
            LogMessage($"共{commandSequence.Count}条命令待执行");
            txtStatusBar.Text = $"命令序列执行中... (0/{commandSequence.Count})";
        }
        
        /// <summary>
        /// 停止命令序列执行
        /// </summary>
        private void BtnStopSequence_Click(object sender, RoutedEventArgs e)
        {
            StopCommandSequence();
            LogMessage("命令序列已手动停止");
        }
        
        /// <summary>
        /// 序列定时器回调
        /// </summary>
        private void SequenceTimer_Tick(object sender, EventArgs e)
        {
            if (!isSequenceRunning || commandSequence == null)
                return;
            
            double elapsedTime = simTime - sequenceStartTime;
            
            // 如果正在等待运动完成
            if (waitingForMotionComplete)
            {
                // 检查轴状态是否为STANDBY（运动完成）
                int axisState = MotionControlAPI.MotionAxis_getState(axisPtr);
                
                // AXIS_STATE_STANDBY = 1
                if (axisState == 1)
                {
                    waitingForMotionComplete = false;
                    StopCommandSequence();
                    LogMessage("========== 命令序列执行完成（运动到达目标位置） ==========");
                    // MessageBox.Show("命令序列执行完成\n所有运动已到达目标位置", "完成", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    // 更新状态显示
                    txtStatusBar.Text = $"命令序列：等待最后一条命令完成运动...";
                }
                
                return;
            }
            
            // 检查是否有命令需要执行
            while (currentCommandIndex < commandSequence.Count)
            {
                var cmd = commandSequence[currentCommandIndex];
                
                if (elapsedTime >= cmd.TimePoint)
                {
                    // 执行命令
                    ExecuteCommand(cmd, currentCommandIndex + 1);
                    currentCommandIndex++;
                    
                    // 更新进度
                    txtStatusBar.Text = $"命令序列执行中... ({currentCommandIndex}/{commandSequence.Count})";
                }
                else
                {
                    // 还没到执行时间
                    break;
                }
            }
            
            // 检查是否所有命令都已发送
            if (currentCommandIndex >= commandSequence.Count && !waitingForMotionComplete)
            {
                // 获取最后一条命令
                var lastCmd = commandSequence[commandSequence.Count - 1];
                
                // 如果最后一条命令是运动命令（绝对运动或相对运动），需要等待运动完成
                if (lastCmd.CommandType == 0 || lastCmd.CommandType == 1)
                {
                    waitingForMotionComplete = true;
                    LogMessage("所有命令已发送，等待最后一条运动命令完成...");
                    txtStatusBar.Text = "命令序列：等待最后一条命令完成运动...";
                }
                else
                {
                    // 最后一条命令不是运动命令，直接完成
                    StopCommandSequence();
                    LogMessage("========== 命令序列执行完成 ==========");
                    // MessageBox.Show("命令序列执行完成", "完成", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
        }
        
        /// <summary>
        /// 执行单个命令
        /// </summary>
        private void ExecuteCommand(CommandSequenceItem cmd, int cmdNumber)
        {
            try
            {
                double elapsedTime = simTime - sequenceStartTime;
                
                switch (cmd.CommandType)
                {
                    case 0:  // 绝对运动
                        // 设置运动参数
                        MotionControlAPI.MotionAxis_setMotionParams(
                            axisPtr,
                            (float)cmd.MaxVelocity,
                            (float)cmd.MaxAccel,
                            (float)cmd.MaxDecel);
                        
                        MotionControlAPI.MotionAxis_setJerkTime(axisPtr, (float)cmd.JerkTime);
                        
                        // 发送运动命令
                        MotionControlAPI.MotionAxis_moveAbsolute(axisPtr, (float)cmd.TargetPosition);
                        
                        LogMessage($"[命令{cmdNumber}] t={elapsedTime:F3}s: 绝对运动 → {cmd.TargetPosition} " +
                                  $"(v={cmd.MaxVelocity}, a={cmd.MaxAccel}, d={cmd.MaxDecel}, jerk={cmd.JerkTime}) " +
                                  $"{cmd.Comment}");
                        break;
                    
                    case 1:  // 相对运动
                        MotionControlAPI.MotionAxis_setMotionParams(
                            axisPtr,
                            (float)cmd.MaxVelocity,
                            (float)cmd.MaxAccel,
                            (float)cmd.MaxDecel);
                        
                        MotionControlAPI.MotionAxis_setJerkTime(axisPtr, (float)cmd.JerkTime);
                        
                        MotionControlAPI.MotionAxis_moveRelative(axisPtr, (float)cmd.TargetPosition);
                        
                        LogMessage($"[命令{cmdNumber}] t={elapsedTime:F3}s: 相对运动 +{cmd.TargetPosition} " +
                                  $"(v={cmd.MaxVelocity}, a={cmd.MaxAccel}, d={cmd.MaxDecel}, jerk={cmd.JerkTime}) " +
                                  $"{cmd.Comment}");
                        break;
                    
                    case 2:  // 停止
                        {
                            // 获取执行前的轴状态
                            int stateBefore = MotionControlAPI.MotionAxis_getState(axisPtr);
                            string stateNameBefore = GetAxisStateName(stateBefore);
                            
                            MotionControlAPI.MotionAxis_stop(axisPtr);
                            
                            // 获取执行后的轴状态
                            int stateAfter = MotionControlAPI.MotionAxis_getState(axisPtr);
                            string stateNameAfter = GetAxisStateName(stateAfter);
                            
                            LogMessage($"[命令{cmdNumber}] t={elapsedTime:F3}s: 正常停止 (状态:{stateNameBefore}→{stateNameAfter}) {cmd.Comment}");
                        }
                        break;
                    
                    case 3:  // 急停
                        {
                            int stateBefore = MotionControlAPI.MotionAxis_getState(axisPtr);
                            string stateNameBefore = GetAxisStateName(stateBefore);
                            
                            MotionControlAPI.MotionAxis_emergencyStop(axisPtr);
                            
                            int stateAfter = MotionControlAPI.MotionAxis_getState(axisPtr);
                            string stateNameAfter = GetAxisStateName(stateAfter);
                            
                            LogMessage($"[命令{cmdNumber}] t={elapsedTime:F3}s: 急停 (状态:{stateNameBefore}→{stateNameAfter}) {cmd.Comment}");
                        }
                        break;
                    
                    case 4:  // 设置参数
                        MotionControlAPI.MotionAxis_setMotionParams(
                            axisPtr,
                            (float)cmd.MaxVelocity,
                            (float)cmd.MaxAccel,
                            (float)cmd.MaxDecel);
                        
                        MotionControlAPI.MotionAxis_setJerkTime(axisPtr, (float)cmd.JerkTime);
                        
                        LogMessage($"[命令{cmdNumber}] t={elapsedTime:F3}s: 设置参数 " +
                                  $"(v={cmd.MaxVelocity}, a={cmd.MaxAccel}, d={cmd.MaxDecel}, jerk={cmd.JerkTime}) " +
                                  $"{cmd.Comment}");
                        break;
                }
            }
            catch (Exception ex)
            {
                LogMessage($"[命令{cmdNumber}] 执行失败: {ex.Message}");
            }
        }
        
        /// <summary>
        /// 停止命令序列
        /// </summary>
        private void StopCommandSequence()
        {
            if (sequenceTimer != null)
            {
                sequenceTimer.Stop();
            }
            
            isSequenceRunning = false;
            waitingForMotionComplete = false;
            
            // 恢复UI状态
            btnStartSequence.IsEnabled = true;
            btnStopSequence.IsEnabled = false;
            btnMoveAbs.IsEnabled = true;
            btnMoveRel.IsEnabled = true;
            btnStop.IsEnabled = true;
            btnEStop.IsEnabled = true;
            
            txtStatusBar.Text = "命令序列已停止";
        }
    }
}
