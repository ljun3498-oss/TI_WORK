// SVPWM（空间矢量脉宽调制）模块源文件
#include "foc_svpwm.h"
#include "foc_core.h"  // 包含TBPRD_VAL宏定义
#include <math.h>

// 常量定义
#define SQRT3_OVER_2 0.86602540378f  // √3/2 的值
#define SQRT3        1.7320508075688772f  // √3 的值
#define ONE_OVER_SQRT3 0.57735026919f // 1/√3 的值
#define INV_SQRT3    0.5773502691896258f

#define CLAMP(x, lo, hi) \
    ((x) < (lo) ? (lo) : ((x) > (hi) ? (hi) : (x)))


// SVPWM计算函数 - 根据αβ坐标系下的电压指令计算SVPWM的比较值
void svpwm_compute(SVPWM_Handle *h, float Valpha, float Vbeta)
{
    /*---------------------------------------------
     * 1. αβ → 三相（逆 Clarke）
     *--------------------------------------------*/
    float Va = Valpha;
    float Vb = -0.5f * Valpha + 0.866025403784f * Vbeta;
    float Vc = -0.5f * Valpha - 0.866025403784f * Vbeta;

    /*---------------------------------------------
     * 2. 零序电压注入（SVPWM 核心）
     *--------------------------------------------*/
    float Vmax = Va;
    if (Vb > Vmax) Vmax = Vb;
    if (Vc > Vmax) Vmax = Vc;

    float Vmin = Va;
    if (Vb < Vmin) Vmin = Vb;
    if (Vc < Vmin) Vmin = Vc;

    float Voffset = -0.5f * (Vmax + Vmin);

    Va += Voffset;
    Vb += Voffset;
    Vc += Voffset;

    /*---------------------------------------------
     * 3. 电压 → PWM 占空比（中心对齐）
     *--------------------------------------------*/
    float k = (float)TBPRD_VAL / h->Vdc;

    float Ta = 0.5f * TBPRD_VAL + Va * k;
    float Tb = 0.5f * TBPRD_VAL + Vb * k;
    float Tc = 0.5f * TBPRD_VAL + Vc * k;

    /*---------------------------------------------
     * 4. 安全限幅（防止边界毛刺）
     *--------------------------------------------*/
    if (Ta < 0.0f) Ta = 0.0f;
    if (Tb < 0.0f) Tb = 0.0f;
    if (Tc < 0.0f) Tc = 0.0f;

    if (Ta > TBPRD_VAL) Ta = TBPRD_VAL;
    if (Tb > TBPRD_VAL) Tb = TBPRD_VAL;
    if (Tc > TBPRD_VAL) Tc = TBPRD_VAL;

    /*---------------------------------------------
     * 5. 输出到 PWM 比较寄存器
     *--------------------------------------------*/
    h->CMPA1 = (uint16_t)Ta;
    h->CMPA2 = (uint16_t)Tb;
    h->CMPA3 = (uint16_t)Tc;
}

