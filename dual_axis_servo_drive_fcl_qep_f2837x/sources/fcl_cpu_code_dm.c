//#############################################################################
// $版权信息:
// 版权所有 (C) 2017-2025 Texas Instruments Incorporated
//     http://www.ti.com/ 保留所有权利
// $
//#############################################################################

//------------------------------------------------------------------------------
//  软件:       电机控制SDK
//
// 文件:    fcl_cpu_code_dm.c
//
// 标题:   FCL电机处理器函数（CPU端）
//
// 目标系列: F2837x/F28004x/F28P55x/F28P65x
//
//-----------------------------------------------------------------------------


//
// includes
//

#include "cpu_cla_shared_dm.h"
#include "fcl_cpu_cla_dm.h"
#include "fcl_cla_dm.h"

/**
 * @brief RAM函数配置
 * @details 将关键的电机控制函数放置到RAM中执行，以提高实时性能
 * @note 根据TI编译器版本选择不同的RAM函数段名称
 */
#ifndef __cplusplus
    #ifdef __TI_COMPILER_VERSION__
        #if __TI_COMPILER_VERSION__ >= 15009000
            // TI编译器15.0.9及以上版本使用.TI.ramfunc段
            #pragma CODE_SECTION(FCL_runPICtrl_M1,".TI.ramfunc");            // 电机1 PI控制函数
            #pragma CODE_SECTION(FCL_runComplexCtrl_M1,".TI.ramfunc");        // 电机1复杂控制函数
            #pragma CODE_SECTION(FCL_runPICtrlWrap_M1,".TI.ramfunc");         // 电机1 PI控制包装函数
            #pragma CODE_SECTION(FCL_runComplexCtrlWrap_M1,".TI.ramfunc");     // 电机1复杂控制包装函数
            #pragma CODE_SECTION(FCL_runQEPWrap_M1,".TI.ramfunc");            // 电机1 QEP包装函数

            #pragma CODE_SECTION(FCL_runPICtrl_M2,".TI.ramfunc");            // 电机2 PI控制函数
            #pragma CODE_SECTION(FCL_runComplexCtrl_M2,".TI.ramfunc");        // 电机2复杂控制函数
            #pragma CODE_SECTION(FCL_runPICtrlWrap_M2,".TI.ramfunc");         // 电机2 PI控制包装函数
            #pragma CODE_SECTION(FCL_runComplexCtrlWrap_M2,".TI.ramfunc");     // 电机2复杂控制包装函数
            #pragma CODE_SECTION(FCL_runQEPWrap_M2,".TI.ramfunc");            // 电机2 QEP包装函数

            #pragma CODE_SECTION(FCL_resetController,".TI.ramfunc");          // 控制器重置函数
        #else
            // 旧版本TI编译器使用ramfuncs段
            #pragma CODE_SECTION(FCL_runPICtrl_M1,"ramfuncs");                 // 电机1 PI控制函数
            #pragma CODE_SECTION(FCL_runComplexCtrl_M1,"ramfuncs");             // 电机1复杂控制函数
            #pragma CODE_SECTION(FCL_runPICtrlWrap_M1,"ramfuncs");              // 电机1 PI控制包装函数
            #pragma CODE_SECTION(FCL_runComplexCtrlWrap_M1,"ramfuncs");          // 电机1复杂控制包装函数
            #pragma CODE_SECTION(FCL_runQEPWrap_M1,"ramfuncs");                 // 电机1 QEP包装函数

            #pragma CODE_SECTION(FCL_runPICtrl_M2,"ramfuncs");                 // 电机2 PI控制函数
            #pragma CODE_SECTION(FCL_runComplexCtrl_M2,"ramfuncs");             // 电机2复杂控制函数
            #pragma CODE_SECTION(FCL_runPICtrlWrap_M2,"ramfuncs");              // 电机2 PI控制包装函数
            #pragma CODE_SECTION(FCL_runComplexCtrlWrap_M2,"ramfuncs");          // 电机2复杂控制包装函数
            #pragma CODE_SECTION(FCL_runQEPWrap_M2,"ramfuncs");                 // 电机2 QEP包装函数

            #pragma CODE_SECTION(FCL_resetController,"ramfuncs");               // 控制器重置函数
        #endif
    #endif
#endif

FCL_Vars_t fclVars[2];
#pragma DATA_SECTION(fclVars, "ClaData");

#ifndef ONEbySQRT3
#define  ONEbySQRT3   (0.57735026918963)    /* 1/sqrt(3) */
#endif

//
// FCL宏：使用寄存器指针实现电流的CLARKE变换
// 适用于PI控制和复杂控制模式
// -结果存储在clarke1结构体中供用户访问（比FCL_CLARKE_STYLE_1慢20ns）
//
/**
 * @brief Clarke变换宏（样式11）- 结构体输出版本
 * @details 实现三相电流到α-β坐标系的变换，并将结果存储到clarke1结构体中
 * @优点 结果存储在结构体中，方便用户访问和调试
 * @缺点 比样式1慢约20ns
 */
#define FCL_CLARKE_STYLE_11()                                                  \
    /* 计算α轴分量：直接使用A相电流值 */                                         \
    clarke1.Alpha = (float32_t)((int16_t)(HWREGH(pMotor->curA_PPBRESULT)) *    \
                            FCL_params.adcScale);                              \
    /* 计算β轴分量：使用A相和B相电流值，通过Clarke变换公式计算 */                 \
    clarke1.Beta  = ((clarke1.Alpha +                                          \
              (2.0 * ((float32_t)((int16_t)(HWREGH(pMotor->curB_PPBRESULT))) * \
              FCL_params.adcScale))) * ONEbySQRT3);

/**
 * @brief Clarke变换宏（样式1）- 局部变量版
 * @details 实现三相电流到α-β坐标系的变换，结果存储在局部变量中
 * @优点 执行速度最快
 * @缺点 结果存储在局部变量中，用户无法直接访问
 */
#define FCL_CLARKE_STYLE_1()                                                   \
    /* 计算α轴电流：直接使用A相电流值 */                                         \
    /* 1. 读取A相电流的ADC结果（HWREGH宏访问硬件寄存器） */                     \
    /* 2. 转换为int16_t类型（ADC采样结果通常为12-16位） */                      \
    /* 3. 转换为float32_t类型进行浮点运算 */                                    \
    /* 4. 乘以adcScale进行归一化，得到pu（标幺值） */                           \
    clarke1Alpha = (float32_t)((int16_t)HWREGH(pMotor->curA_PPBRESULT) *       \
                         pMotor->FCL_params.adcScale);                         \
    /* 计算β轴电流：使用A相和B相电流值 */                                       \
    /* 公式：β = (A + 2*B) * (1/√3) */                                         \
    /* 注：由于三相电流之和为零（A+B+C=0），因此可以通过A和B相计算出β轴电流 */  \
    clarke1Beta  = ((clarke1Alpha +                                            \
               (2.0 * ((float32_t)((int16_t)HWREGH(pMotor->curB_PPBRESULT)) *  \
               pMotor->FCL_params.adcScale))) * ONEbySQRT3);

/**
 * @brief Clarke变换宏（样式3）- 位域访问版
 * @details 使用位域类型寄存器访问实现电流的CLARKE变换
 * @优点 使用位域访问，代码更简洁
 * @缺点 需要特定的位域定义支持
 */
// 电流A相值（位域访问）
#define FCL_CURRENT3_A  (IFB_LEMV_PPB * FCL_params.adcScale)
// 电流B相值（位域访问）
#define FCL_CURRENT3_B  (IFB_LEMW_PPB * FCL_params.adcScale)

#define FCL_CLARKE_STYLE_3()                                                   \
        /* 计算α轴电流：直接使用A相电流值 */                                         \
        clarke1Alpha = (FCL_CURRENT3_A);                                       \
        /* 计算β轴电流：使用A相和B相电流值 */                                       \
        /* 公式：β = (A + 2*B) * (1/√3) */                                         \
        clarke1Beta  = ((clarke1Alpha + (2.0 * FCL_CURRENT3_B)) * ONEbySQRT3);

/**
 * @brief 位置反馈和电流变换宏
 * @details 实现位置反馈的Park变换和电流的Clarke变换
 * @note 适用于PI控制和复杂控制模式
 */
//
// 电机1
//
#define M1_FCL_POSITION_CURRENT_CLARKE_MACRO()                                 \
/*                                                                             \
 *-----------------------------------------------------------------------------\
 *  等待QEP感应完成（位置编码器套件模块）                                     \
 * ----------------------------------------------------------------------------\
 */                                                                            \
    /* SETGPIO18_HIGH;      */                                                 \
    /* 检查CLA1_1状态         */                                                \
    /* 下面一行比位域风格多花2个周期 */                                        \
    /*while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX1) == false);*/\
    while(PieCtrlRegs.PIEIFR11.bit.INTx1 == 0);                                \
    /* SETGPIO18_LOW;      */                                                  \
/*                                                                             \
 *  ---------------------------------------------------------------------------\
 *  连接PARK模块输入并调用park变换宏                                           \
 *  ---------------------------------------------------------------------------\
 */                                                                            \
    park1Sine   = __sinpuf32(fclVars[0].pangle);                               \
    park1Cosine = __cospuf32(fclVars[0].pangle);                               \
/*                                                                             \
 * ----------------------------------------------------------------------------\
 * 测量相电流，并归一化到(-1,+1)。                                             \
 * 连接CLARKE模块输入并调用clarke变换宏                                        \
 * ----------------------------------------------------------------------------\
 */                                                                            \
    /*  SETGPIO18_HIGH; */                                                     \
    /* 下面一行比位域风格多花2个周期 */                                        \
    /*while((HWREGH(adcBasePhaseW) & ADC_INTFLG_ADCINT1) == false);*/          \
    while(pMotor->AdcIntFlag->bit.ADCINT1 == 0);                               \
    /* asm(" NOP");   */                                                       \
    /* SETGPIO18_LOW; */                                                       \
    FCL_CLARKE_STYLE_1();

//
// 电机2
//
/**
 * @brief 电机2位置和电流变换宏
 * @details 实现位置反馈的Park变换和电流的Clarke变换
 * @note 适用于PI控制和复杂控制模式
 */
#define M2_FCL_POSITION_CURRENT_CLARKE_MACRO()                                 \
/*                                                                             \
 *-----------------------------------------------------------------------------\
 *  等待QEP感应完成（位置编码器套件模块）                                     \
 * ----------------------------------------------------------------------------\
 */                                                                            \
    /* SETGPIO18_HIGH; */                                                      \
    /* 检查CLA1_5状态         */                                                \
    /* 下面一行比位域风格多花2个周期 */                                        \
    /*while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX5) == false);*/\
    while(PieCtrlRegs.PIEIFR11.bit.INTx5 == 0);                                \
    /* SETGPIO18_LOW; */                                                       \
/*                                                                             \
 *  ---------------------------------------------------------------------------\
 *  连接PARK模块输入并调用park变换宏                                           \
 *  ---------------------------------------------------------------------------\
 */                                                                            \
    park1Sine   = __sinpuf32(fclVars[1].pangle);                          \
    park1Cosine = __cospuf32(fclVars[1].pangle);                          \
/*                                                                             \
 * ----------------------------------------------------------------------------\
 * 测量相电流，并归一化到(-1,+1)。                                             \
 * 连接CLARKE模块输入并调用clarke变换宏                                        \
 * ----------------------------------------------------------------------------\
 */                                                                            \
    /* SETGPIO18_HIGH; */                                                      \
    /* 下面一行比位域风格多花2个周期 */                                        \
    /*while((HWREGH(adcBasePhaseW) & ADC_INTFLG_ADCINT2) == false);*/          \
    while(pMotor->AdcIntFlag->bit.ADCINT2 == 0);                               \
    /* asm(" NOP");   */                                                       \
    /* SETGPIO18_LOW; */                                                       \
    FCL_CLARKE_STYLE_1();

//
// FCL宏：使用指针访问寄存器实现PWM更新
// 适用于PI控制和复杂控制模式
//
/**
 * @brief PWM更新方式1 - 使用API函数更新
 * @details 通过调用EPWM模块的API函数来设置比较寄存器值
 * @优点 代码可读性好，便于维护
 * @缺点 执行速度相对较慢
 */
#define FCL_PWM_UPDATE_STYLE_1()                                               \
    /* 更新Phase C的比较值 (Tc + 偏移量) */                                      \
    EPWM_setCounterCompareValue(pwmHandle[0], EPWM_COUNTER_COMPARE_A,          \
                                (uint32_t)(svgen2.Tc + svgen2.tmp1));          \
    /* 更新Phase A的比较值 (Ualpha + 偏移量) */                                 \
    EPWM_setCounterCompareValue(pwmHandle[1], EPWM_COUNTER_COMPARE_A,          \
                                (uint32_t)(svgen2.Ualpha + svgen2.tmp1));      \
    /* 更新Phase B的比较值 (Tb + 偏移量) */                                      \
    EPWM_setCounterCompareValue(pwmHandle[2], EPWM_COUNTER_COMPARE_A,          \
                                (uint32_t)(svgen2.Tb + svgen2.tmp1));

//
// FCL宏：使用直接地址访问寄存器实现PWM更新
// 适用于PI控制和复杂控制模式
// 此宏比方式1节省约40ns的周期时间
//
/**
 * @brief PWM更新方式2 - 使用直接地址访问更新
 * @details 通过直接访问寄存器地址来设置比较值
 * @优点 执行速度最快，比方式1节省约40ns的周期时间
 * @缺点 代码可移植性差，硬编码寄存器地址
 */
#define FCL_PWM_UPDATE_STYLE_2()                                               \
    /* 直接写入EPWM1的CMPA寄存器 (Phase C) */                                   \
    *(volatile uint32_t *)(0x406A) = (uint32_t)(svgen2.Tc + svgen2.tmp1);      \
    /* 直接写入EPWM2的CMPA寄存器 (Phase A) */                                   \
    *(volatile uint32_t *)(0x416A) = (uint32_t)(svgen2.Ualpha + svgen2.tmp1);  \
    /* 直接写入EPWM3的CMPA寄存器 (Phase B) */                                   \
    *(volatile uint32_t *)(0x426A) = (uint32_t)(svgen2.Tb + svgen2.tmp1);

/**
 * @brief PWM更新方式3 - 使用结构指针访问更新
 * @details 通过pMotor结构中的指针成员来设置比较值
 * @优点 代码可读性和可移植性较好，执行速度较快
 * @缺点 比方式2稍慢，但比方式1快
 */
#define FCL_PWM_UPDATE_STYLE_3()                                               \
    /* 通过指针更新Phase C的比较值 */                                           \
    *(pMotor->pwmCompA) = (uint32_t)(svgen2.Tc + svgen2.tmp1);                 \
    /* 通过指针更新Phase A的比较值 */                                           \
    *(pMotor->pwmCompB) = (uint32_t)(svgen2.Ualpha + svgen2.tmp1);             \
    /* 通过指针更新Phase B的比较值 */                                           \
    *(pMotor->pwmCompC) = (uint32_t)(svgen2.Tb + svgen2.tmp1);

// for test
//#define FCL_PWM_UPDATE_STYLE_3()                                               \
//    *(pMotor->pwmCompC) = (uint32_t)(svgen2.Tc + svgen2.tmp1);                 \
//    *(pMotor->pwmCompA) = (uint32_t)(svgen2.Ualpha + svgen2.tmp1);             \
//    *(pMotor->pwmCompB) = (uint32_t)(svgen2.Tb + svgen2.tmp1);


// FCL宏：实现SVPWM生成和PWM更新
// 适用于PI控制和复杂控制模式
//
#define FCL_SVGEN_PWM_PDATE_MACRO()                                            \
/*                                                                             \
 * ----------------------------------------------------------------------------\
 * 空间矢量脉宽调制(SVPWM)计算宏                                              \
 * ----------------------------------------------------------------------------\
 * 功能：计算三相PWM的占空比并更新到PWM寄存器                                 \
 * 原理：基于α-β坐标系的电压值计算三个桥臂的导通时间                          \
 */                                                                            \
    /* 计算三个桥臂的基本导通时间 */                                             \
    svgen2.Tb = (svgen2.Ubeta - svgen2.Ualpha) / 2;                            \
    svgen2.Tc = svgen2.Tb - svgen2.Ubeta;                                      \
    /* 注：Ta = svgen2.Ualpha (隐式计算) */                                    \
                                                                               \
    /* 计算中心对齐偏移量，确保所有导通时间为正 */                             \
    /* 1. 找出最大和最小的导通时间 */                                           \
    svgen2.tmp2 = __fmax(__fmax(svgen2.Ualpha,                                 \
                                       svgen2.Tc), svgen2.Tb);                 \
    svgen2.tmp2 += __fmin(__fmin(svgen2.Ualpha,                                \
                                        svgen2.Tc), svgen2.Tb);                \
    /* 2. 计算偏移量，实现中心对齐PWM */                                       \
    svgen2.tmp1  =  ((-svgen2.tmp2) / 2) +                                     \
                             pMotor->FCL_params.carrierMid;                    \
                                                                               \
/*                                                                             \
* -----------------------------------------------------------------------------\
* 计算最终占空比并写入PWM比较寄存器                                            \
* -----------------------------------------------------------------------------\
* 调用FCL_PWM_UPDATE_STYLE_3()宏将计算结果更新到PWM模块                        \
*/                                                                             \
     FCL_PWM_UPDATE_STYLE_3();

//
// 从库中进行插桩测试请使用以下代码
//
extern volatile uint16_t FCL_cycleCount[2];

#define READ_FCL_COUNT_M1                                                      \
    FCL_cycleCount[0] = HWREGH(M1_U_PWM_BASE + EPWM_O_TBCTR);

#define READ_FCL_COUNT_M2                                                      \
    FCL_cycleCount[1] = HWREGH(M2_U_PWM_BASE + EPWM_O_TBCTR);

//
//  函数：初始化FCL操作所需的PWM，将由用户应用程序在初始化或设置过程中调用
//
void FCL_initPWM(MOTOR_Vars_t *ptrMotor,
                 uint32_t basePhaseU, uint32_t basePhaseV, uint32_t basePhaseW)
{
    EPWM_disableCounterCompareShadowLoadMode(basePhaseU,
                                             EPWM_COUNTER_COMPARE_A);

    EPWM_disableCounterCompareShadowLoadMode(basePhaseV,
                                             EPWM_COUNTER_COMPARE_A);

    EPWM_disableCounterCompareShadowLoadMode(basePhaseW,
                                             EPWM_COUNTER_COMPARE_A);

    ptrMotor->pwmCompA = (uint32_t *)(basePhaseU + EPWM_O_CMPA);
    ptrMotor->pwmCompB = (uint32_t *)(basePhaseV + EPWM_O_CMPA);
    ptrMotor->pwmCompC = (uint32_t *)(basePhaseW + EPWM_O_CMPA);

    return;
}

//
// 函数：初始化2个电流传感器的ADC
//
void FCL_initADC_2I(MOTOR_Vars_t *ptrMotor, uint32_t basePhaseW,
                    uint32_t resultBaseV, ADC_PPBNumber baseV_PPB,
                    uint32_t resultBaseW, ADC_PPBNumber baseW_PPB)
{
    uint16_t ppbCurV, ppbCurW;

    ppbCurV = (uint16_t)(ADC_PPBxRESULT_OFFSET_BASE + (uint16_t)baseV_PPB * 2);
    ppbCurW = (uint16_t)(ADC_PPBxRESULT_OFFSET_BASE + (uint16_t)baseW_PPB * 2);

    ptrMotor->curA_PPBRESULT = resultBaseV + ppbCurV;
    ptrMotor->curB_PPBRESULT = resultBaseW + ppbCurW;

    ptrMotor->AdcIntFlag = (union ADCINTFLG_REG *)(basePhaseW + ADC_O_INTFLG);

    return;
}

//
// 函数：初始化3个电流传感器的ADC
//
void FCL_initADC_3I(MOTOR_Vars_t *ptrMotor, uint32_t basePhaseW,
                    uint32_t resultBaseA, ADC_PPBNumber baseA_PPB,
                    uint32_t resultBaseB, ADC_PPBNumber baseB_PPB,
                    uint32_t resultBaseC, ADC_PPBNumber baseC_PPB)
{
    uint16_t ppbCurA, ppbCurB, ppbCurC;

    ppbCurA = (uint16_t)(ADC_PPBxRESULT_OFFSET_BASE + (uint16_t)baseA_PPB * 2);
    ppbCurB = (uint16_t)(ADC_PPBxRESULT_OFFSET_BASE + (uint16_t)baseB_PPB * 2);
    ppbCurC = (uint16_t)(ADC_PPBxRESULT_OFFSET_BASE + (uint16_t)baseC_PPB * 2);

    ptrMotor->curA_PPBRESULT = resultBaseA + ppbCurA;
    ptrMotor->curB_PPBRESULT = resultBaseB + ppbCurB;
    ptrMotor->curC_PPBRESULT = resultBaseC + ppbCurC;

    ptrMotor->AdcIntFlag = (union ADCINTFLG_REG *)(basePhaseW + ADC_O_INTFLG);

    return;
}

//
// 函数：初始化QEP（正交编码器）
//
void FCL_initQEP(MOTOR_Vars_t *ptrMotor, const uint32_t baseA)
{
    ptrMotor->ptrFCL->ptrQEP = (struct EQEP_REGS *)baseA;

    return;
}

//
// 函数：重置FCL变量，当用户想要停止电机并重新启动电机时非常有用
//
void FCL_resetController(MOTOR_Vars_t *ptrMotor)
{
    ptrMotor->pi_id.carryOver = 0;
    ptrMotor->pi_id.out = 0;
    ptrMotor->D_cpu.carryOver = 0;
    ptrMotor->D_cpu.idErr = 0;
    ptrMotor->D_cpu.iqErr = 0;

    ptrMotor->ptrFCL->pi_iq.carryOver = 0;
    ptrMotor->ptrFCL->pi_iq.out = 0;
    ptrMotor->ptrFCL->Q_cla.carryOver = 0;
    ptrMotor->ptrFCL->Q_cla.idErr = 0;
    ptrMotor->ptrFCL->Q_cla.iqErr = 0;
    ptrMotor->ptrFCL->speedWePrev = 0;
}

//
//  函数：返回32位常量，此版本返回值为0x00000008
//  版本   日期       平台                   描述           位置
//   1   2016/07  IDDK / TMDSCNCDF28379D   Beta MSS      \FCL\v01_00_00_00
//   2   2017/03  IDDK / TMDSCNCDF28379D   cSUITE GA     \FCL\v02_00_00_00
//   3   2017/11  F28379DXL/ GaN/ DRV8305  Beta MSS      \FCL\v03_00_00_02
//   4   2018/03  F28379DXL/ GaN/ DRV8305  cSUITE GA     \FCL_SFRA\v01_00_00_00
//   5   2019/03  IDDK / TMDSCNCDF28379D   MCSDK_1
//   6   2019/06  IDDK / TMDSCNCDF28379D   MCSDK_2
//   7   2019/09  IDDK / F28838x/F2837x/F28004x, MCSDK_V21,
//                                         支持绝对编码器
//   8   2019/09  LPD-F2837x/F28004x/GaN,   MCSDK_V21, 双电机控制
//
uint32_t FCL_getSwVersion(void)
{
    //
    // 此版本返回0x00000008
    //
    return((uint32_t)(0x00000008));
}

//
// FCL内部函数，在复杂控制API中调用
// 此函数实现复杂控制算法
//
void complexCtrl_M1(MOTOR_Vars_t *pMotor)
{
    // SETGPIO18_HIGH; // 仅用于调试

    pMotor->pi_id.out += pMotor->D_cpu.kDirect *
                         (fclVars[0].Q_cla.idErr * pMotor->D_cpu.cosWTs -
                          fclVars[0].Q_cla.iqErr * pMotor->D_cpu.sinWTs) +
                          pMotor->D_cpu.carryOver ;

    // 极限测试：CLAMP_MACRO限幅已禁用
    // CLAMP_MACRO(pMotor->pi_id);

    // SETGPIO18_LOW; // 仅用于调试

    return;
}

void complexCtrl_M2(MOTOR_Vars_t *pMotor)
{
    // SETGPIO18_HIGH; // 仅用于调试

    pMotor->pi_id.out += pMotor->D_cpu.kDirect *
                         (fclVars[1].Q_cla.idErr * pMotor->D_cpu.cosWTs -
                          fclVars[1].Q_cla.iqErr * pMotor->D_cpu.sinWTs) +
                          pMotor->D_cpu.carryOver ;

    // 极限测试：CLAMP_MACRO限幅已禁用
    // CLAMP_MACRO(pMotor->pi_id);

    // SETGPIO18_LOW; // 仅用于调试

    return;
}

//
// 函数：执行快速电流环的PI控制
//
#pragma CODE_ALIGN(FCL_runPICtrl_M1, 2)
#pragma FUNCTION_OPTIONS(FCL_runPICtrl_M1, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runPICtrl_M1, "--opt_for_speed")

void FCL_runPICtrl_M1(MOTOR_Vars_t *pMotor)
{
    register float32_t  clarke1Alpha, clarke1Beta;
    register float32_t  park1Sine, park1Cosine;
    SVGEN2_t            svgen2;

    //
    //  宏功能：
    //      1. 读取QEP位置
    //      2. 获取电流反馈
    //      3. 执行Clarke变换
    //
    M1_FCL_POSITION_CURRENT_CLARKE_MACRO();

    //
    //  PARK变换
    //  连接PI模块输入并在CLA中调用PI IQ控制器宏
    //
    fclVars[0].pi_iq.err = fclVars[0].pi_iq.ref -
                ((clarke1Beta * park1Cosine) - (clarke1Alpha * park1Sine));

    pMotor->pi_id.err = pMotor->pi_id.ref -
                ((clarke1Alpha * park1Cosine) + (clarke1Beta * park1Sine));

    //
    // 连接PI模块输入并调用PI ID控制器宏
    // CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_2);
    //
    Cla1ForceTask2();

    FCL_PI_MACRO(pMotor->pi_id)             // Id回路 - PI控制器 - CPU，这是id的，iq的在cla1_2中计算

    register float32_t  piidc, piids;

    piidc = pMotor->pi_id.out * park1Cosine;
    piids = pMotor->pi_id.out * park1Sine;

    //
    //  等待CLA中的PI IQ计算完成 (CLA1_2)
    //
    // SETGPIO18_HIGH; // 仅用于调试
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX2) == false);
    // SETGPIO18_LOW;  // 仅用于调试

    //
    //  执行逆Park变换并连接SVGEN_DQ模块输入
    //
    svgen2.Ualpha = ( piidc - (fclVars[0].pi_iq.out * park1Sine)) *
            pMotor->FCL_params.carrierMid;

    svgen2.Ubeta  = ((fclVars[0].pi_iq.out * park1Cosine) + piids) *
            pMotor->FCL_params.cmidsqrt3;

    //
    //  宏功能：
    //      1. 执行SVGEN (空间矢量生成)
    //      2. 执行PWM更新
    //
    FCL_SVGEN_PWM_PDATE_MACRO();

    READ_FCL_COUNT_M1;

    return;
}

//
//  函数：FCL PI控制器包装函数 - 执行电流环后处理和参数更新
//
//  功能说明：
//    本函数在FCL_runPICtrl_M1()之后调用，负责：
//    1. 触发CLA Task4处理QEP编码器标志（索引检测、低速计算）
//    2. 根据实时母线电压更新PI控制器增益（自适应调整）
//    3. 计算反电动势前馈补偿（提高动态响应）
//    4. 更新电流反馈值到用户可见变量
//    5. 同步CPU与CLA状态，清除中断标志
//
//  注意：本函数与FCL_runPICtrl_M1()配合使用，完成完整的FCL电流环控制
//
#pragma CODE_ALIGN(FCL_runPICtrlWrap_M1, 2)
#pragma FUNCTION_OPTIONS(FCL_runPICtrlWrap_M1, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runPICtrlWrap_M1, "--opt_for_speed")

void FCL_runPICtrlWrap_M1(MOTOR_Vars_t *pMotor)
{
    float32_t Vbase = pMotor->FCL_params.Vdcbus * 1.15 / 2;
    float32_t invZbase = pMotor->FCL_params.Ibase / Vbase;

    //
    // 为节省CPU周期并加快计算速度，进位数学运算在此包装函数内完成
    //   .CarryOver将其传递到下一次迭代
    //   反电动势计算被整合到Q计算中，因为速度和磁通在迭代之间变化不大
    //   方程经过调整以适应此处
    //

    //
    //  CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_4);
    //
    Cla1ForceTask4();

    //
    // 更新PI ID参数
    //
    pMotor->pi_id.Kp = (pMotor->FCL_params.Ld * invZbase * pMotor->FCL_params.wccD)*0.1F;
    pMotor->pi_id.Ki =(pMotor->FCL_params.Rd * invZbase * pMotor->FCL_params.wccD * pMotor->FCL_params.tSamp)*0.1F;

    pMotor->pi_id.Kerr = (pMotor->pi_id.Ki * 0.5F) + pMotor->pi_id.Kp;
    pMotor->pi_id.KerrOld = (pMotor->pi_id.Ki * 0.5F) - pMotor->pi_id.Kp;
    pMotor->pi_id.carryOver = (pMotor->pi_id.err * pMotor->pi_id.KerrOld);

    //
    // 更新PI IQ参数
    //
    fclVars[0].pi_iq.Kp = pMotor->FCL_params.Lq * invZbase * pMotor->FCL_params.wccQ;
    fclVars[0].pi_iq.Ki = pMotor->FCL_params.Rq * invZbase * pMotor->FCL_params.wccQ * pMotor->FCL_params.tSamp;

    fclVars[0].pi_iq.Kerr = (fclVars[0].pi_iq.Ki * 0.5) +fclVars[0].pi_iq.Kp;

    fclVars[0].pi_iq.KerrOld = (fclVars[0].pi_iq.Ki * 0.5) -fclVars[0].pi_iq.Kp;

    fclVars[0].pi_iq.carryOver =(fclVars[0].pi_iq.err *
            fclVars[0].pi_iq.KerrOld) +
                   ( pMotor->FCL_params.BemfK *
                           (pMotor->speed.Speed - fclVars[0].speedWePrev));

    fclVars[0].speedWePrev = pMotor->speed.Speed;

    //
    // 为了将id和iq电流反馈传递给用户，
    // 在包装函数中更新它们
    //
    pMotor->pi_id.fbk = pMotor->pi_id.ref - pMotor->pi_id.err;
    
    fclVars[0].pi_iq.fbk = fclVars[0].pi_iq.ref -fclVars[0].pi_iq.err;

    //
    // 在清除INTx4之前给足够的时间让CLA任务4完成
    //
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX4) == false);

    //
    // 清除CLA任务标志1、2和4
    //
    HWREGH(PIECTRL_BASE + PIE_O_IFR11) &= ~(PIE_IFR11_INTX1 |
                                            PIE_IFR11_INTX2 |
                                            PIE_IFR11_INTX4 );
    return;
}
//
// The functions for motor_1, task 1, 2, 3, and 4 for motor_1
//

//
// 函数：执行快速电流环的复杂控制
//
#pragma CODE_ALIGN(FCL_runComplexCtrl_M1, 2)
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrl_M1, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrl_M1, "--opt_for_speed")

void FCL_runComplexCtrl_M1(MOTOR_Vars_t *pMotor)
{
    register float32_t  clarke1Alpha, clarke1Beta;
    register float32_t  park1Sine, park1Cosine;
    register float32_t  piidc, piids;
    SVGEN2_t            svgen2;

    //
    //  宏功能：
    //      1. 读取QEP位置
    //      2. 获取电流反馈
    //      3. 执行Clarke变换
    //
    M1_FCL_POSITION_CURRENT_CLARKE_MACRO();

    //
    //    PARK变换
    //    连接CMPLX模块输入并调用CMPLX控制器
    //
    fclVars[0].Q_cla.iqErr = fclVars[0].pi_iq.ref -
                  ((clarke1Beta * park1Cosine) - (clarke1Alpha * park1Sine));
    fclVars[0].Q_cla.idErr = pMotor->pi_id.ref -
                  ((clarke1Alpha * park1Cosine) + (clarke1Beta * park1Sine));

    // SETGPIO18_HIGH; // 仅用于调试
    Cla1ForceTask3();               // Iq回路 - 复杂控制 - CLA
    // SETGPIO18_LOW;  // 仅用于调试

    //
    // Id回路 - 复杂控制 - CPU
    //  complexCtrl(pMotor);
    //
    pMotor->pi_id.out += pMotor->D_cpu.kDirect *
                         (fclVars[0].Q_cla.idErr * pMotor->D_cpu.cosWTs -
                          fclVars[0].Q_cla.iqErr * pMotor->D_cpu.sinWTs) +
                          pMotor->D_cpu.carryOver ;

    // 极限测试：CLAMP_MACRO限幅已禁用
    // CLAMP_MACRO(pMotor->pi_id);

    piidc = pMotor->pi_id.out * park1Cosine;
    piids = pMotor->pi_id.out * park1Sine;

    //
    //  等待CLA中的CMPLX IQ计算完成
    //
    // SETGPIO18_HIGH;  // 仅用于调试
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX3) == false);
    // SETGPIO18_LOW;   // 仅用于调试

    //
    //  执行逆Park变换并连接SVGEN_DQ模块输入
    //
    svgen2.Ualpha = ( piidc - (fclVars[0].pi_iq.out * park1Sine)) *
            pMotor->FCL_params.carrierMid;

    svgen2.Ubeta = ((fclVars[0].pi_iq.out * park1Cosine) + piids) *
            pMotor->FCL_params.cmidsqrt3;

    //
    //  宏功能：
    //      1. 执行SVGEN（空间矢量生成）
    //      2. 执行PWM更新
    //
    FCL_SVGEN_PWM_PDATE_MACRO();

    READ_FCL_COUNT_M1;

    return;
}

//
// 函数：用户应用程序在复杂控制模式下快速电流环完成时调用的包装函数
//
#pragma CODE_ALIGN(FCL_runComplexCtrlWrap_M1, 2)
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrlWrap_M1, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrlWrap_M1, "--opt_for_speed")

void FCL_runComplexCtrlWrap_M1(MOTOR_Vars_t *pMotor)
{
    float32_t Vbase    = pMotor->FCL_params.Vdcbus * 1.15 / 2;
    float32_t invZbase = pMotor->FCL_params.Ibase / Vbase;

    float32_t WTs      = pMotor->speed.Speed *
            pMotor->FCL_params.Wbase * pMotor->FCL_params.tSamp;

    //
    //  CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_4);
    //
    Cla1ForceTask4();

    pMotor->D_cpu.cosWTs  = __cos(WTs);
    fclVars[0].Q_cla.cosWTs = pMotor->D_cpu.cosWTs;

    pMotor->D_cpu.sinWTs  = __sin(WTs);
    fclVars[0].Q_cla.sinWTs = pMotor->D_cpu.sinWTs;

    pMotor->D_cpu.expVal =
            expf(-(pMotor->FCL_params.Rd / pMotor->FCL_params.Ld) *
                 pMotor->FCL_params.tSamp);

    fclVars[0].Q_cla.expVal =
            expf(-(pMotor->FCL_params.Rq / pMotor->FCL_params.Lq) *
                 pMotor->FCL_params.tSamp);

    pMotor->D_cpu.kDirect = pMotor->FCL_params.Rd * invZbase *
            __sqrt(2.0F - 2.0F * __cos(pMotor->FCL_params.wccD *
                                       pMotor->FCL_params.tSamp)) /
                                       (1.0F - pMotor->D_cpu.expVal);

    fclVars[0].Q_cla.kDirect = pMotor->FCL_params.Rq * invZbase *
            __sqrt(2.0F - 2.0F * __cos(pMotor->FCL_params.wccQ *
                                      pMotor->FCL_params.tSamp)) /
                                      (1.0F - fclVars[0].Q_cla.expVal);

    //
    // 为节省CPU周期并加快计算速度，进位数学运算在此包装函数内完成
    //    'carryOver'将其传递到下一次迭代
    // 反电动势计算被整合到Q计算中，因为速度和磁通在迭代之间变化不大
    //    方程经过调整以适应此处
    //
    pMotor->D_cpu.carryOver = -(pMotor->D_cpu.kDirect *
            fclVars[0].Q_cla.idErr * pMotor->D_cpu.expVal);

    fclVars[0].Q_cla.carryOver = -(fclVars[0].Q_cla.kDirect *
            fclVars[0].Q_cla.iqErr * fclVars[0].Q_cla.expVal) +
                    (pMotor->FCL_params.BemfK *
                           (pMotor->speed.Speed - fclVars[0].speedWePrev));

    fclVars[0].speedWePrev = pMotor->speed.Speed;

    //
    // 为了将id和iq电流反馈传递给用户，
    // 在包装函数中更新它们
    //
    pMotor->pi_id.fbk = pMotor->pi_id.ref - fclVars[0].Q_cla.idErr;

    fclVars[0].pi_iq.fbk = fclVars[0].pi_iq.ref -
            fclVars[0].Q_cla.iqErr;

    //
    // 在清除INTx4之前给足够的时间让CLA任务4完成
    //
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX4) == false);

    //
    // 清除CLA任务标志1、3和4
    //
    HWREGH(PIECTRL_BASE + PIE_O_IFR11) &= ~(PIE_IFR11_INTX1 |
                                            PIE_IFR11_INTX3 |
                                            PIE_IFR11_INTX4 );
    return;
}

//
// 函数：执行电机2的快速电流环PI控制
//
#pragma CODE_ALIGN(FCL_runPICtrl_M2, 2)
#pragma FUNCTION_OPTIONS(FCL_runPICtrl_M2, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runPICtrl_M2, "--opt_for_speed")

/**
 * @brief 执行电机2的快速电流环PI控制
 * @details 实现电机2的电流环控制，包括位置读取、电流采样、坐标变换、PI控制和PWM生成
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 */
void FCL_runPICtrl_M2(MOTOR_Vars_t *pMotor)
{
    register float32_t  clarke1Alpha, clarke1Beta;    // Clarke变换结果：α和β轴电流
    register float32_t  park1Sine, park1Cosine;        // Park变换所需的正弦和余弦值
    SVGEN2_t            svgen2;                       // SVPWM生成结构体

    //
    //  宏功能：
    //      1. 读取QEP位置
    //      2. 获取电流反馈
    //      3. 执行Clarke变换
    //
    M2_FCL_POSITION_CURRENT_CLARKE_MACRO();
    //
    //  Park变换
    //  连接PI模块输入并调用CLA中的PI IQ控制器宏
    //
    fclVars[1].pi_iq.err = fclVars[1].pi_iq.ref -
                ((clarke1Beta * park1Cosine) - (clarke1Alpha * park1Sine));

    pMotor->pi_id.err = pMotor->pi_id.ref -
                ((clarke1Alpha * park1Cosine) + (clarke1Beta * park1Sine));

    //
    //  连接PI模块输入并调用PI ID控制器宏
    //  CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_6);
    //
    Cla1ForceTask6();

    FCL_PI_MACRO(pMotor->pi_id)             // Id loop - PI controller - CPU

    register float32_t  piidc, piids;

    piidc = pMotor->pi_id.out * park1Cosine;
    piids = pMotor->pi_id.out * park1Sine;

    //
    //  等待CLA中的PI IQ计算完成 (CLA1_6)
    //
    // SETGPIO18_HIGH; // 仅用于调试
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX6) == false);
    // SETGPIO18_LOW;  // 仅用于调试

    //
    //  执行逆Park变换并连接SVGEN_DQ模块输入
    //
    svgen2.Ualpha = ( piidc - (fclVars[1].pi_iq.out * park1Sine)) *
            pMotor->FCL_params.carrierMid;

    svgen2.Ubeta  = ((fclVars[1].pi_iq.out * park1Cosine) + piids) *
            pMotor->FCL_params.cmidsqrt3;

    //
    //  宏功能：
    //      1. 执行SVGEN（空间矢量生成）
    //      2. 执行PWM更新
    //
    FCL_SVGEN_PWM_PDATE_MACRO();

    READ_FCL_COUNT_M2;

    return;
}

//
// Duplicate the functions for motor_2, but change some codes for CLA tasks
// trigger and its status check
// task 5, 6, 7, and 8 for motor_2
//

/**
 * @brief 电机2 PI控制模式下的快速电流环完成包装函数
 * @details 用户应用程序在PI控制模式下快速电流环完成时调用的包装函数，
 *          实现参数更新、进位计算和反电动势计算等功能
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 */
#pragma CODE_ALIGN(FCL_runPICtrlWrap_M2, 2)
#pragma FUNCTION_OPTIONS(FCL_runPICtrlWrap_M2, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runPICtrlWrap_M2, "--opt_for_speed")

void FCL_runPICtrlWrap_M2(MOTOR_Vars_t *pMotor)
{
    float32_t Vbase = pMotor->FCL_params.Vdcbus * 1.15 / 2;    // 基极电压计算
    float32_t invZbase = pMotor->FCL_params.Ibase / Vbase;      // 基极阻抗倒数

    //
    // 为节省CPU周期并加快计算速度，进位数学运算在此包装函数内完成
    //   .CarryOver将其传递到下一次迭代
    // 反电动势计算被整合到Q计算中，因为速度和磁通在迭代之间变化不大
    //   方程经过调整以适应此处
    //

    //
    //  CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_8);
    //
    Cla1ForceTask8();


    //
    // 更新PI ID参数
    //
    pMotor->pi_id.Kp = (pMotor->FCL_params.Ld * invZbase * pMotor->FCL_params.wccD)*0.1F;
    pMotor->pi_id.Ki =(pMotor->FCL_params.Rd * invZbase * pMotor->FCL_params.wccD * pMotor->FCL_params.tSamp)*0.1F;

    pMotor->pi_id.Kerr = (pMotor->pi_id.Ki * 0.5F) + pMotor->pi_id.Kp;
    pMotor->pi_id.KerrOld = (pMotor->pi_id.Ki * 0.5F) - pMotor->pi_id.Kp;
    pMotor->pi_id.carryOver = (pMotor->pi_id.err * pMotor->pi_id.KerrOld);

    //
    // 更新PI IQ参数
    //
    fclVars[1].pi_iq.Kp = pMotor->FCL_params.Lq * invZbase *
            pMotor->FCL_params.wccQ;
    fclVars[1].pi_iq.Ki = pMotor->FCL_params.Rq * invZbase *
            pMotor->FCL_params.wccQ * pMotor->FCL_params.tSamp;

    fclVars[1].pi_iq.Kerr = (fclVars[1].pi_iq.Ki * 0.5) +
            fclVars[1].pi_iq.Kp;

    fclVars[1].pi_iq.KerrOld = (fclVars[1].pi_iq.Ki * 0.5) -
            fclVars[1].pi_iq.Kp;

    fclVars[1].pi_iq.carryOver = (fclVars[1].pi_iq.err *
            fclVars[1].pi_iq.KerrOld) +
                   ( pMotor->FCL_params.BemfK *
                          (pMotor->speed.Speed - fclVars[1].speedWePrev));

    fclVars[1].speedWePrev = pMotor->speed.Speed;

    //
    // 为了将id和iq电流反馈传递给用户，
    // 在包装函数中更新它们
    //
    pMotor->pi_id.fbk = pMotor->pi_id.ref - pMotor->pi_id.err;

    fclVars[1].pi_iq.fbk =  fclVars[1].pi_iq.ref -
            fclVars[1].pi_iq.err;

    //
    // 在清除INTx8之前给足够的时间让CLA任务8完成
    //
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX8) == false);

    //
    // 清除CLA任务标志5、6和8
    //
    HWREGH(PIECTRL_BASE + PIE_O_IFR11) &= ~(PIE_IFR11_INTX5 |
                                            PIE_IFR11_INTX6 |
                                            PIE_IFR11_INTX8 );
    return;
}


/**
 * @brief 执行电机2的快速电流环复杂控制
 * @details 实现电机2的复杂控制算法，包括位置读取、电流采样、坐标变换、复杂控制器和PWM生成
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 */
#pragma CODE_ALIGN(FCL_runComplexCtrl_M2, 2)
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrl_M2, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrl_M2, "--opt_for_speed")

void FCL_runComplexCtrl_M2(MOTOR_Vars_t *pMotor)
{
    register float32_t  clarke1Alpha, clarke1Beta;    // Clarke变换结果：α和β轴电流
    register float32_t  park1Sine, park1Cosine;        // Park变换所需的正弦和余弦值
    register float32_t  piidc, piids;                  // 逆Park变换中间变量
    SVGEN2_t            svgen2;                       // SVPWM生成结构体

    //
    //  宏功能：
    //      1. 读取QEP位置
    //      2. 获取电流反馈
    //      3. 执行Clarke变换
    //
    M2_FCL_POSITION_CURRENT_CLARKE_MACRO();

    //
    //    PARK变换
    //    连接CMPLX模块输入并调用CMPLX控制器
    //
    fclVars[1].Q_cla.iqErr = fclVars[1].pi_iq.ref -
                  ((clarke1Beta * park1Cosine) - (clarke1Alpha * park1Sine));
    fclVars[1].Q_cla.idErr = pMotor->pi_id.ref -
                  ((clarke1Alpha * park1Cosine) + (clarke1Beta * park1Sine));

    //
    // 连接CC模块输入并调用CC控制器宏
    //
    // SETGPIO18_HIGH;  // 仅用于调试
    Cla1ForceTask7();               // Iq回路 - 复杂控制 - CLA任务7
    // SETGPIO18_LOW;   // 仅用于调试

    //
    // Id回路 - 复杂控制 - CPU
    // complexCtrl(pMotor);
    //
    pMotor->pi_id.out += pMotor->D_cpu.kDirect *
                         (fclVars[1].Q_cla.idErr * pMotor->D_cpu.cosWTs -
                          fclVars[1].Q_cla.iqErr * pMotor->D_cpu.sinWTs) +
                          pMotor->D_cpu.carryOver ;

    // 极限测试：CLAMP_MACRO限幅已禁用
    // CLAMP_MACRO(pMotor->pi_id);

    piidc = pMotor->pi_id.out * park1Cosine;
    piids = pMotor->pi_id.out * park1Sine;

    //
    //  等待CLA任务7中的CMPLX IQ计算完成
    //
    // SETGPIO18_HIGH;      // 仅用于调试
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX7) == false);
    // SETGPIO18_LOW;       // 仅用于调试

    //
    //  执行逆Park变换并连接SVGEN_DQ模块输入
    //
    svgen2.Ualpha = ( piidc - (fclVars[1].pi_iq.out * park1Sine)) *
            pMotor->FCL_params.carrierMid;

    svgen2.Ubeta = ((fclVars[1].pi_iq.out * park1Cosine) + piids) *
            pMotor->FCL_params.cmidsqrt3;

    //
    //  宏功能：
    //      1. 执行SVGEN（空间矢量生成）
    //      2. 执行PWM更新
    //
    FCL_SVGEN_PWM_PDATE_MACRO();

    READ_FCL_COUNT_M2;

    return;
}

/**
 * @brief 电机2复杂控制模式下的快速电流环完成包装函数
 * @details 用户应用程序在复杂控制模式下快速电流环完成时调用的包装函数，
 *          实现参数更新、进位计算、反电动势计算和CLA任务管理等功能
 * @param pMotor 电机变量结构体指针，包含电机控制所需的所有参数和状态
 */
#pragma CODE_ALIGN(FCL_runComplexCtrlWrap_M2, 2)
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrlWrap_M2, "--auto_inline")
#pragma FUNCTION_OPTIONS(FCL_runComplexCtrlWrap_M2, "--opt_for_speed")

void FCL_runComplexCtrlWrap_M2(MOTOR_Vars_t *pMotor)
{
    float32_t Vbase    = pMotor->FCL_params.Vdcbus * 1.15 / 2;    // 基极电压计算
    float32_t invZbase = pMotor->FCL_params.Ibase / Vbase;        // 基极阻抗倒数

    float32_t WTs      = pMotor->speed.Speed *                    // 角度增量计算
            pMotor->FCL_params.Wbase * pMotor->FCL_params.tSamp;

    //
    //  CLA_forceTasks(CLA1_BASE, CLA_TASKFLAG_8);
    //
    Cla1ForceTask8();           // CLA任务8

    pMotor->D_cpu.cosWTs  = __cos(WTs);
    fclVars[1].Q_cla.cosWTs = pMotor->D_cpu.cosWTs;

    pMotor->D_cpu.sinWTs  = __sin(WTs);
    fclVars[1].Q_cla.sinWTs = pMotor->D_cpu.sinWTs;

    pMotor->D_cpu.expVal =
            expf(-(pMotor->FCL_params.Rd / pMotor->FCL_params.Ld) *
                 pMotor->FCL_params.tSamp);

    fclVars[1].Q_cla.expVal =
            expf(-(pMotor->FCL_params.Rq / pMotor->FCL_params.Lq) *
                 pMotor->FCL_params.tSamp);

    pMotor->D_cpu.kDirect = pMotor->FCL_params.Rd * invZbase *
            __sqrt(2.0F - 2.0F * __cos(pMotor->FCL_params.wccD *
                                       pMotor->FCL_params.tSamp)) /
                                       (1.0F - pMotor->D_cpu.expVal);

    fclVars[1].Q_cla.kDirect = pMotor->FCL_params.Rq * invZbase *
            __sqrt(2.0F - 2.0F * __cos(pMotor->FCL_params.wccQ *
                                       pMotor->FCL_params.tSamp)) /
                                       (1.0F - fclVars[1].Q_cla.expVal);

    //
    // 为节省CPU周期并加快计算速度，进位数学运算在此包装函数内完成
    //    'carryOver'将其传递到下一次迭代
    // 反电动势计算被整合到Q计算中，因为速度和磁通在迭代之间变化不大
    //    方程经过调整以适应此处
    //
    pMotor->D_cpu.carryOver = -(pMotor->D_cpu.kDirect *
            fclVars[1].Q_cla.idErr * pMotor->D_cpu.expVal);

    fclVars[1].Q_cla.carryOver = -(fclVars[1].Q_cla.kDirect *
            fclVars[1].Q_cla.iqErr * fclVars[1].Q_cla.expVal) +
                    (pMotor->FCL_params.BemfK *
                         (pMotor->speed.Speed - fclVars[1].speedWePrev));

    fclVars[1].speedWePrev = pMotor->speed.Speed;

    //
    // 为了将id和iq电流反馈传递给用户，
    // 在包装函数中更新它们
    //
    pMotor->pi_id.fbk = pMotor->pi_id.ref - fclVars[1].Q_cla.idErr;

    fclVars[1].pi_iq.fbk = fclVars[1].pi_iq.ref -
            fclVars[1].Q_cla.iqErr;

    //
    // 在清除INTx8之前给足够的时间让CLA任务8完成
    //
    while((HWREGH(PIECTRL_BASE + PIE_O_IFR11) & PIE_IFR11_INTX8) == false);

    //
    // 清除CLA任务标志5、7和8
    //
    HWREGH(PIECTRL_BASE + PIE_O_IFR11) &= ~(PIE_IFR11_INTX5 |
                                            PIE_IFR11_INTX7 |
                                            PIE_IFR11_INTX8 );
    return;
}

//
// end of this file
//
