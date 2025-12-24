// FOC (Field Oriented Control)电机启动模块源文件
#include "foc_startup.h"

// 函数声明
uint32_t getTimeInMs(void);

// 全局变量定义
StartupParams startup_params;

// 开环角度变量
static float open_loop_angle = 0.0f;

// 初始化启动参数
void Startup_init(void)
{
    // 重置启动状态
    startup_params.state = STARTUP_STATE_IDLE;
    
    // 设置启动参数
    startup_params.alignment_time_ms = 500.0f;       // 对齐时间：500毫秒
    startup_params.alignment_current = 1.0f;          // 对齐电流：1.0安培
    startup_params.open_loop_time_ms = 2000.0f;       // 开环运行时间：2000毫秒
    startup_params.open_loop_speed = 10.0f;           // 开环运行速度：10弧度/秒
    startup_params.transition_speed = 5.0f;            // 切换到闭环的速度阈值：5弧度/秒
    
    // 初始化标志
    startup_params.encoder_index_detected = false;
    
    // 重置开环角度
    open_loop_angle = 0.0f;
}

// 执行电机启动序列
void Startup_exec(void)
{
    static float start_time = 0.0f;
    
    // 根据当前状态执行相应操作
    switch(startup_params.state)
    {
        case STARTUP_STATE_IDLE:
        {
            // 准备启动
            start_time = (float)getTimeInMs();
            open_loop_angle = 0.0f;
            startup_params.encoder_index_detected = false;
            
            // 进入对齐状态
            startup_params.state = STARTUP_STATE_ALIGNMENT;
            break;
        }
            
        case STARTUP_STATE_ALIGNMENT:
        {
            // 计算对齐时间
            float alignment_time = (float)getTimeInMs() - start_time;
            
            // 检查是否完成对齐
            if(alignment_time >= startup_params.alignment_time_ms)
            {
                // 对齐完成，准备进入开环运行
                start_time = (float)getTimeInMs();
                startup_params.state = STARTUP_STATE_OPEN_LOOP;
            }
            else
            {
                // 执行电机对齐：在D轴施加固定电流
                // 这里假设Iq_ref为0，Id_ref为对齐电流
                // 注意：实际的电流控制和PWM生成在主控制循环中执行
            }
            break;
        }
            
        case STARTUP_STATE_OPEN_LOOP:
        {
            // 计算开环运行时间
            float open_loop_time = (float)getTimeInMs() - start_time;
            
            // 检查是否完成开环运行
            if(open_loop_time >= startup_params.open_loop_time_ms || 
               startup_params.encoder_index_detected)
            {
                // 开环运行完成或检测到编码器索引信号，准备进入闭环
                startup_params.state = STARTUP_STATE_CLOSE_LOOP;
            }
            else
            {
                // 执行开环运行：根据时间计算电角度
                open_loop_angle += startup_params.open_loop_speed * DT;
                
                // 确保角度在0到2π之间
                if(open_loop_angle >= 2.0f * M_PI_F)
                {
                    open_loop_angle -= 2.0f * M_PI_F;
                }
                
                // 这里需要在主控制循环中使用这个计算出的电角度
                // 注意：实际的电流控制和PWM生成在主控制循环中执行
            }
            break;
        }
            
        case STARTUP_STATE_CLOSE_LOOP:
        {
            // 检查是否达到切换到闭环的条件
            if(fabsf(motor_rpm) >= startup_params.transition_speed * 60.0f / (2.0f * M_PI_F))
            {
                // 达到条件，启动完成
                startup_params.state = STARTUP_STATE_COMPLETE;
            }
            break;
        }
            
        case STARTUP_STATE_COMPLETE:
        {
            // 启动完成，无需操作
            break;
        }
            
        case STARTUP_STATE_ERROR:
        {
            // 处理错误情况
            break;
        }
            
        default:
        {
            // 未知状态，重置
            Startup_reset();
            break;
        }
    }
}

// 检查启动是否完成
bool Startup_isComplete(void)
{
    return (startup_params.state == STARTUP_STATE_COMPLETE);
}

// 获取当前启动状态
StartupState Startup_getState(void)
{
    return startup_params.state;
}

// 重置启动序列
void Startup_reset(void)
{
    startup_params.state = STARTUP_STATE_IDLE;
}

// 获取开环角度
float Startup_getOpenLoopAngle(void)
{
    return open_loop_angle;
}

// 获取系统时间（毫秒）
// 注意：实际应用中，应使用系统定时器实现此功能
uint32_t getTimeInMs(void)
{
    // 这里使用CPU定时器0的计数值作为时间基准
    // 假设CPU定时器0已配置为1ms中断一次
    static uint32_t time_ms = 0;
    
    // 实际应用中，应在定时器中断中递增time_ms
    // 这里为了演示，简单返回一个递增的值
    time_ms++;
    
    return time_ms;
}