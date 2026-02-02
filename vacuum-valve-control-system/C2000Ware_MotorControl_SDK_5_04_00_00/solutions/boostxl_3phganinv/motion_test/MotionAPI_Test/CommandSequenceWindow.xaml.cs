using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;

namespace MotionAPI_Test
{
    /// <summary>
    /// 命令序列项
    /// </summary>
    public class CommandSequenceItem
    {
        public bool Enabled { get; set; } = true;
        public double TimePoint { get; set; } = 0.0;  // 执行时间点（秒）
        public int CommandType { get; set; } = 0;  // 0:绝对运动, 1:相对运动, 2:停止, 3:急停, 4:设置参数
        public double TargetPosition { get; set; } = 0.0;
        public double MaxVelocity { get; set; } = 500.0;
        public double MaxAccel { get; set; } = 2000.0;
        public double MaxDecel { get; set; } = 2000.0;
        public double EmergencyDecel { get; set; } = 4000.0;
        public double JerkTime { get; set; } = 0.1;
        public string Comment { get; set; } = "";
    }

    public partial class CommandSequenceWindow : Window
    {
        public ObservableCollection<CommandSequenceItem> Commands { get; set; }

        public CommandSequenceWindow()
        {
            InitializeComponent();

            // 初始化10行命令
            Commands = new ObservableCollection<CommandSequenceItem>();
            for (int i = 0; i < 10; i++)
            {
                Commands.Add(new CommandSequenceItem
                {
                    Enabled = false,
                    TimePoint = i * 1.0,
                    Comment = $"命令 {i + 1}"
                });
            }

            dgCommands.ItemsSource = Commands;
        }

        /// <summary>
        /// 加载预设配置
        /// </summary>
        private void BtnLoadPreset_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new System.Windows.Window
            {
                Title = "选择预设配置",
                Width = 500,
                Height = 250,
                WindowStartupLocation = WindowStartupLocation.CenterScreen,
                ResizeMode = ResizeMode.NoResize
            };

            var panel = new StackPanel { Margin = new Thickness(20) };
            
            panel.Children.Add(new TextBlock 
            { 
                Text = "请选择预设配置：", 
                FontSize = 14, 
                FontWeight = FontWeights.Bold, 
                Margin = new Thickness(0, 0, 0, 15) 
            });

            var btn1 = new Button 
            { 
                Content = "预设1: 反向运动测试（优化版，时间间隔合理）", 
                Height = 40, 
                Margin = new Thickness(0, 5, 0, 5),
                Tag = 1
            };
            btn1.Click += (s, e) => { LoadPreset_ReverseMotion(); dialog.Close(); };

            var btn2 = new Button 
            { 
                Content = "预设2: 连续往复运动测试", 
                Height = 40, 
                Margin = new Thickness(0, 5, 0, 5),
                Tag = 2
            };
            btn2.Click += (s, e) => { LoadPreset_ContinuousMotion(); dialog.Close(); };

            var btn3 = new Button 
            { 
                Content = "预设3: 高频切换测试（0.1s间隔，测试极限）", 
                Height = 40, 
                Margin = new Thickness(0, 5, 0, 5),
                Tag = 3
            };
            btn3.Click += (s, e) => { LoadPreset_HighFrequency(); dialog.Close(); };

            var btnCancel = new Button 
            { 
                Content = "取消", 
                Height = 35, 
                Margin = new Thickness(0, 10, 0, 0) 
            };
            btnCancel.Click += (s, e) => dialog.Close();

            panel.Children.Add(btn1);
            panel.Children.Add(btn2);
            panel.Children.Add(btn3);
            panel.Children.Add(btnCancel);

            dialog.Content = panel;
            dialog.ShowDialog();
        }

        /// <summary>
        /// 预设1: 反向运动测试（优化时间间隔，避免频繁切换）
        /// </summary>
        private void LoadPreset_ReverseMotion()
        {
            Commands.Clear();

            // 命令1: 0s - 绝对运动到300（正向）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 0.0,
                CommandType = 0,  // 绝对运动
                TargetPosition = 300,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "正向运动到300"
            });

            // 命令2: 0.4s - 绝对运动到-200（在加速完成后切换，触发REVERSE）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 0.4,
                CommandType = 0,
                TargetPosition = -200,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "反向运动到-200（触发11段S型）"
            });

            // 命令3: 1.5s - 绝对运动到800（等待反向运动减速后切换）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 1.5,
                CommandType = 0,
                TargetPosition = 800,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "再次正向到800"
            });

            // 命令4-10: 禁用
            for (int i = 3; i < 10; i++)
            {
                Commands.Add(new CommandSequenceItem
                {
                    Enabled = false,
                    TimePoint = i * 1.0,
                    Comment = $"命令 {i + 1}"
                });
            }

            // MessageBox.Show("已加载【反向运动测试】预设配置", "预设加载", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        /// <summary>
        /// 预设2: 连续往复运动测试
        /// </summary>
        private void LoadPreset_ContinuousMotion()
        {
            Commands.Clear();

            double[] targets = { 1000, 300, 1200, 0, 800, 400, 1000, 500, 900, 200 };
            
            for (int i = 0; i < 10; i++)
            {
                Commands.Add(new CommandSequenceItem
                {
                    Enabled = i < 8,  // 启用前8个
                    TimePoint = i * 0.5,  // 每0.5秒一个命令
                    CommandType = 0,  // 绝对运动
                    TargetPosition = targets[i],
                    MaxVelocity = 500,
                    MaxAccel = 2000,
                    MaxDecel = 2000,
                    JerkTime = 0.1,
                    Comment = $"运动到 {targets[i]}"
                });
            }

            // MessageBox.Show("已加载【连续往复运动】预设配置", "预设加载", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        /// <summary>
        /// 预设3: 高频切换测试（0.1s间隔，测试Buffer截断和轨迹衔接）
        /// </summary>
        private void LoadPreset_HighFrequency()
        {
            Commands.Clear();

            // 警告用户
            var result = MessageBox.Show(
                "⚠️ 警告：此预设使用0.1秒的极短时间间隔！\n\n" +
                "这会导致：\n" +
                "1. Buffer频繁截断\n" +
                "2. 轨迹不断切换\n" +
                "3. 可能出现速度/位置突变\n\n" +
                "此预设仅用于测试极限情况和验证代码健壮性。\n\n" +
                "确定要加载吗？",
                "高频切换测试",
                MessageBoxButton.YesNo,
                MessageBoxImage.Warning);

            if (result == MessageBoxResult.No)
                return;

            // 命令1: 0s - 绝对运动到300（正向）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 0.0,
                CommandType = 0,
                TargetPosition = 300,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "正向运动到300"
            });

            // 命令2: 0.1s - 绝对运动到-200（极短间隔，在加速初期切换）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 0.1,
                CommandType = 0,
                TargetPosition = -200,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "反向到-200（0.1s间隔）"
            });

            // 命令3: 0.2s - 绝对运动到800（再次极短间隔）
            Commands.Add(new CommandSequenceItem
            {
                Enabled = true,
                TimePoint = 0.2,
                CommandType = 0,
                TargetPosition = 800,
                MaxVelocity = 500,
                MaxAccel = 2000,
                MaxDecel = 2000,
                JerkTime = 0.1,
                Comment = "正向到800（0.1s间隔）"
            });

            // 命令4-10: 禁用
            for (int i = 3; i < 10; i++)
            {
                Commands.Add(new CommandSequenceItem
                {
                    Enabled = false,
                    TimePoint = i * 0.1,
                    Comment = $"命令 {i + 1}"
                });
            }

            // MessageBox.Show(
            //     "已加载【高频切换测试】预设配置\n\n" +
            //     "注意观察：\n" +
            //     "- 速度曲线是否有突变\n" +
            //     "- 位置曲线是否有跳变\n" +
            //     "- 加速度是否连续\n" +
            //     "- 日志中的轨迹衔接情况",
            //     "预设加载",
            //     MessageBoxButton.OK,
            //     MessageBoxImage.Information);
        }

        /// <summary>
        /// 保存配置到JSON文件
        /// </summary>
        private void BtnSaveConfig_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new SaveFileDialog
            {
                Filter = "JSON文件 (*.json)|*.json",
                DefaultExt = ".json",
                FileName = "command_sequence.json"
            };

            if (dialog.ShowDialog() == true)
            {
                try
                {
                    var json = JsonSerializer.Serialize(Commands, new JsonSerializerOptions
                    {
                        WriteIndented = true
                    });
                    File.WriteAllText(dialog.FileName, json);
                    MessageBox.Show("配置已保存", "成功", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"保存失败: {ex.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        /// <summary>
        /// 从JSON文件加载配置
        /// </summary>
        private void BtnLoadConfig_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new OpenFileDialog
            {
                Filter = "JSON文件 (*.json)|*.json",
                DefaultExt = ".json"
            };

            if (dialog.ShowDialog() == true)
            {
                try
                {
                    var json = File.ReadAllText(dialog.FileName);
                    var loadedCommands = JsonSerializer.Deserialize<List<CommandSequenceItem>>(json);
                    
                    Commands.Clear();
                    foreach (var cmd in loadedCommands)
                    {
                        Commands.Add(cmd);
                    }
                    
                    // MessageBox.Show("配置已加载", "成功", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"加载失败: {ex.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        /// <summary>
        /// 增加行
        /// </summary>
        private void BtnAddRow_Click(object sender, RoutedEventArgs e)
        {
            // 计算下一个时间点（当前最大时间点+1.0）
            double nextTime = 0.0;
            if (Commands.Count > 0)
            {
                nextTime = Commands.Max(c => c.TimePoint) + 1.0;
            }
            
            Commands.Add(new CommandSequenceItem
            {
                Enabled = false,
                TimePoint = nextTime,
                MaxVelocity = 500.0,
                MaxAccel = 2000.0,
                MaxDecel = 2000.0,
                EmergencyDecel = 4000.0,
                JerkTime = 0.1,
                Comment = $"命令 {Commands.Count + 1}"
            });
            
            // 滚动到新增的行
            dgCommands.ScrollIntoView(Commands[Commands.Count - 1]);
        }
        
        /// <summary>
        /// 删除选中的行
        /// </summary>
        private void BtnDeleteRow_Click(object sender, RoutedEventArgs e)
        {
            if (dgCommands.SelectedItem is CommandSequenceItem selectedItem)
            {
                var result = MessageBox.Show(
                    $"确定要删除该命令吗？\n时间: {selectedItem.TimePoint}s\n备注: {selectedItem.Comment}",
                    "确认删除",
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Question);
                
                if (result == MessageBoxResult.Yes)
                {
                    Commands.Remove(selectedItem);
                }
            }
            else
            {
                MessageBox.Show("请先选择要删除的行", "提示", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
        
        /// <summary>
        /// 清空所有命令
        /// </summary>
        private void BtnClearAll_Click(object sender, RoutedEventArgs e)
        {
            var result = MessageBox.Show(
                "确定要清空所有命令吗？",
                "确认",
                MessageBoxButton.YesNo,
                MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                Commands.Clear();
                for (int i = 0; i < 10; i++)
                {
                    Commands.Add(new CommandSequenceItem
                    {
                        Enabled = false,
                        TimePoint = i * 1.0,
                        Comment = $"命令 {i + 1}"
                    });
                }
            }
        }

        /// <summary>
        /// 确定按钮
        /// </summary>
        private void BtnOK_Click(object sender, RoutedEventArgs e)
        {
            // 验证配置
            var enabledCommands = Commands.Where(c => c.Enabled).OrderBy(c => c.TimePoint).ToList();
            
            if (enabledCommands.Count == 0)
            {
                MessageBox.Show("请至少启用一个命令", "提示", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            // 检查时间点是否合理
            for (int i = 0; i < enabledCommands.Count - 1; i++)
            {
                if (enabledCommands[i + 1].TimePoint - enabledCommands[i].TimePoint < 0.01)
                {
                    MessageBox.Show(
                        $"命令时间间隔过小: {enabledCommands[i].TimePoint}s 和 {enabledCommands[i + 1].TimePoint}s\n" +
                        "建议间隔至少0.01秒",
                        "警告",
                        MessageBoxButton.OK,
                        MessageBoxImage.Warning);
                }
            }

            DialogResult = true;
            Close();
        }

        /// <summary>
        /// 取消按钮
        /// </summary>
        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}

