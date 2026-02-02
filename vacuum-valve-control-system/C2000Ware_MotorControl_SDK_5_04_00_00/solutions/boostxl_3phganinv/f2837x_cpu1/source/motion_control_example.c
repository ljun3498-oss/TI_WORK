//#############################################################################
//
// FILE:    motion_control_example.c
// TITLE:   Motion Control S-Curve Example Code
//
// 本文件提供S型加减速曲线的使用示例
//
//#############################################################################

#include "motion_control.h"

//*****************************************************************************
// 示例1：基本的S型曲线运动
//*****************************************************************************
void Example_SCurve_Basic(void)
{
    MotionAxis_t axis;
    
    // 步骤1：初始化运动轴
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    
    // 步骤2：设置运动参数（最大速度、加速度、减速度）
    MotionAxis_setMotionParams(&axis, 
        5000.0f,    // 最大速度: 5000 unit/s
        20000.0f,   // 最大加速度: 20000 unit/s²
        20000.0f    // 最大减速度: 20000 unit/s²
    );
    
    // 步骤3：选择S型曲线类型
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    
    // 步骤4：设置加加速度参数（控制S型曲线的平滑程度）
    MotionAxis_setSCurveParams(&axis, 50000.0f);  // 50000 unit/s³
    
    // 步骤5：使能轴
    MotionAxis_enable(&axis);
    
    // 步骤6：执行绝对位置运动
    MotionAxis_moveAbsolute(&axis, 10000.0f);
    
    // 注意：在实际应用中，需要在中断中周期性调用：
    // - MotionAxis_updateProfile(&axis);  // 轨迹生成
    // - MotionAxis_updateControl(&axis);  // 位置环控制
}

//*****************************************************************************
// 示例2：梯形曲线 vs S型曲线对比
//*****************************************************************************
void Example_Profile_Comparison(void)
{
    MotionAxis_t axis;
    float32_t distance = 10000.0f;
    float32_t trap_time, scurve_time;
    
    // 初始化
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_enable(&axis);
    
    //=========================================================================
    // 测试1：使用梯形曲线
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_TRAPEZOIDAL);
    MotionAxis_moveAbsolute(&axis, distance);
    
    // 获取轨迹总时间
    trap_time = MotionAxis_getTotalTime(&axis);
    
    // 观察：
    // - 加速度瞬间跳变到最大值
    // - 可能产生机械冲击和振动
    // - 运动时间最短
    
    // 等待运动完成...
    while(!MotionAxis_isIdle(&axis))
    {
        // 调用updateProfile和updateControl
    }
    
    //=========================================================================
    // 测试2：使用S型曲线
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axis, 50000.0f);
    MotionAxis_moveAbsolute(&axis, distance * 2);
    
    // 获取轨迹总时间
    scurve_time = MotionAxis_getTotalTime(&axis);
    
    // 观察：
    // - 加速度平滑变化
    // - 机械冲击和振动明显减小
    // - 运动时间稍长（通常增加5-15%）
    
    // 对比结果：
    // scurve_time > trap_time（S型曲线时间更长）
    // 但S型曲线的平滑性更好，振动更小
}

//*****************************************************************************
// 示例3：不同加加速度参数的影响
//*****************************************************************************
void Example_Jerk_Tuning(void)
{
    MotionAxis_t axis;
    
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_enable(&axis);
    
    //=========================================================================
    // 测试1：低加加速度（极限平滑）
    //=========================================================================
    MotionAxis_setSCurveParams(&axis, 5000.0f);
    MotionAxis_moveAbsolute(&axis, 10000.0f);
    
    // 效果：
    // - 运动非常平滑，振动最小
    // - 运动时间最长
    // - 适合精密定位或柔性机构
    
    //=========================================================================
    // 测试2：中等加加速度（平衡）
    //=========================================================================
    MotionAxis_setSCurveParams(&axis, 30000.0f);
    MotionAxis_moveAbsolute(&axis, 20000.0f);
    
    // 效果：
    // - 平滑性和时间的良好平衡
    // - 适合大多数应用场合
    
    //=========================================================================
    // 测试3：高加加速度（接近梯形）
    //=========================================================================
    MotionAxis_setSCurveParams(&axis, 100000.0f);
    MotionAxis_moveAbsolute(&axis, 30000.0f);
    
    // 效果：
    // - 接近梯形曲线的性能
    // - 运动时间较短
    // - 仍保留一定的平滑性
    
    // 调整建议：
    // 1. 从高加加速度开始（如100000）
    // 2. 逐步降低，观察振动改善
    // 3. 在振动和时间之间找到平衡点
}

//*****************************************************************************
// 示例4：运动中切换曲线类型
//*****************************************************************************
void Example_Runtime_Profile_Switch(void)
{
    MotionAxis_t axis;
    
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_enable(&axis);
    
    //=========================================================================
    // 第一段运动：使用梯形曲线
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_TRAPEZOIDAL);
    MotionAxis_moveAbsolute(&axis, 5000.0f);
    
    // 等待完成...
    
    //=========================================================================
    // 第二段运动：切换为S型曲线
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axis, 40000.0f);
    MotionAxis_moveAbsolute(&axis, 15000.0f);
    
    // 系统会自动平滑过渡到新的轨迹
    // 无需手动处理切换过程
    
    //=========================================================================
    // 第三段运动：再次切换回梯形曲线
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_TRAPEZOIDAL);
    MotionAxis_moveAbsolute(&axis, 25000.0f);
}

//*****************************************************************************
// 示例5：实时监控运动状态
//*****************************************************************************
void Example_Motion_Monitoring(void)
{
    MotionAxis_t axis;
    float32_t pos, vel, accel;
    ProfileState_e state;
    
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axis, 50000.0f);
    MotionAxis_enable(&axis);
    
    // 启动运动
    MotionAxis_moveAbsolute(&axis, 10000.0f);
    
    // 实时监控运动过程
    while(!MotionAxis_isIdle(&axis))
    {
        // 获取当前位置命令
        pos = MotionAxis_getCmdPosition(&axis);
        
        // 获取当前速度命令
        vel = MotionAxis_getCmdVelocity(&axis);
        
        // 获取当前加速度（S型曲线会平滑变化）
        accel = TrapProfile_getAcceleration(&axis.profile);
        
        // 获取轨迹状态
        state = MotionAxis_getProfileState(&axis);
        
        // 根据状态判断运动阶段
        switch(state)
        {
            case PROFILE_ACCEL:
                // 加速段
                // S型曲线：加速度从0平滑增加到aMax，再减小到0
                // 梯形曲线：加速度直接跳到aMax
                break;
                
            case PROFILE_CONST:
                // 匀速段
                // 加速度为0，速度保持最大值
                break;
                
            case PROFILE_DECEL:
                // 减速段
                // S型曲线：减速度从0平滑增加到dMax，再减小到0
                // 梯形曲线：减速度直接跳到dMax
                break;
                
            case PROFILE_DONE:
                // 运动完成
                break;
                
            default:
                break;
        }
        
        // 调用控制函数（在实际中断中执行）
        // MotionAxis_updateProfile(&axis);
        // MotionAxis_updateControl(&axis);
    }
}

//*****************************************************************************
// 示例6：多轴同步S型曲线运动
//*****************************************************************************
void Example_Multi_Axis_SCurve(void)
{
    MotionAxis_t axisX, axisY;
    
    // 初始化X轴
    MotionAxis_init(&axisX, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axisX, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_setProfileType(&axisX, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axisX, 40000.0f);
    MotionAxis_enable(&axisX);
    
    // 初始化Y轴
    MotionAxis_init(&axisY, 1, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axisY, 3000.0f, 15000.0f, 15000.0f);
    MotionAxis_setProfileType(&axisY, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axisY, 30000.0f);
    MotionAxis_enable(&axisY);
    
    // 同时启动两轴运动
    MotionAxis_moveAbsolute(&axisX, 10000.0f);
    MotionAxis_moveAbsolute(&axisY, 8000.0f);
    
    // 两轴都使用S型曲线，可以获得：
    // - 平滑的运动过程
    // - 减少的振动和冲击
    // - 更好的路径精度（对于XY平台）
    
    // 等待两轴都完成
    while(!MotionAxis_isIdle(&axisX) || !MotionAxis_isIdle(&axisY))
    {
        // 更新两轴
        // MotionAxis_updateProfile(&axisX);
        // MotionAxis_updateProfile(&axisY);
        // MotionAxis_updateControl(&axisX);
        // MotionAxis_updateControl(&axisY);
    }
}

//*****************************************************************************
// 示例7：参数自动调整策略
//*****************************************************************************
void Example_Adaptive_Jerk(void)
{
    MotionAxis_t axis;
    float32_t distance;
    float32_t jerk;
    
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_enable(&axis);
    
    // 策略：根据运动距离自动调整加加速度
    // 短距离：使用较大的加加速度，减少运动时间
    // 长距离：使用较小的加加速度，提高平滑性
    
    distance = 1000.0f;  // 示例距离
    
    if(distance < 1000.0f)
    {
        // 短距离：高加加速度
        jerk = 80000.0f;
    }
    else if(distance < 5000.0f)
    {
        // 中等距离：中等加加速度
        jerk = 50000.0f;
    }
    else
    {
        // 长距离：低加加速度（更平滑）
        jerk = 30000.0f;
    }
    
    MotionAxis_setSCurveParams(&axis, jerk);
    MotionAxis_moveAbsolute(&axis, distance);
}

//*****************************************************************************
// 示例8：紧急停止对比
//*****************************************************************************
void Example_Emergency_Stop_Comparison(void)
{
    MotionAxis_t axis;
    
    MotionAxis_init(&axis, 0, AXIS_TYPE_REAL);
    MotionAxis_setMotionParams(&axis, 5000.0f, 20000.0f, 20000.0f);
    MotionAxis_enable(&axis);
    
    //=========================================================================
    // 测试1：梯形曲线紧急停止
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_TRAPEZOIDAL);
    MotionAxis_moveAbsolute(&axis, 10000.0f);
    
    // 运动一段时间后紧急停止
    // ... 延时 ...
    MotionAxis_emergencyStop(&axis);
    
    // 效果：
    // - 减速度瞬间跳变，冲击大
    // - 停止距离短
    
    //=========================================================================
    // 测试2：S型曲线紧急停止
    //=========================================================================
    MotionAxis_setProfileType(&axis, PROFILE_TYPE_SCURVE);
    MotionAxis_setSCurveParams(&axis, 50000.0f);
    MotionAxis_moveAbsolute(&axis, 20000.0f);
    
    // 运动一段时间后紧急停止
    // ... 延时 ...
    MotionAxis_emergencyStop(&axis);
    
    // 效果：
    // - 减速度平滑变化，冲击小
    // - 停止距离稍长
    // - 机械应力更小
}

//
// End of File
//




