# 双轴伺服驱动项目文档

**最后更新**: 2026-03-11

---

## 一、更改记录

### 2026-03-11：电机2隔离 + 故障检测统一 + 代码合并

#### 背景

当前硬件只有一块 BOOSTXL-3PhGaNInv 驱动板，接在电机1上。电机2没有驱动板，其 ADC 读到的母线电压和电流均为异常值，导致故障标志被持续触发，并通过 `runSyncControl()` 的双轴联锁机制连带停止了电机1。

#### 问题：电机2无驱动板导致电机1被连带停机

**现象**：电机1 `tripFlagDMC=0`（无故障），但 `runMotor=MOTOR_STOP`，电机无法运行。

**根因**：
- 电机2 未接驱动板 → ADC 读到的 Vdcbus 不在 15~30V 范围 → `tripFlagDMC = 0x0002`（电压越限）
- `runSyncControl()` 中的条件 `(motorVars[0].tripFlagDMC == 0) && (motorVars[1].tripFlagDMC == 0)` 失败
- 两轴都被强制设为 `CTRL_STOP`，`speedRef = 0`

**修改**（`dual_axis_servo_drive.c`）：

1. **`runSyncControl()` 故障联锁**：注释掉 `motorVars[1].tripFlagDMC == 0` 条件，仅检查电机1
2. **`runSyncControl()` 运行判断**：仅检查 `motorVars[0].runMotor == MOTOR_RUN`，不再要求电机2
3. **A2 任务**：注释掉 `runMotorControl(&motorVars[1], halMtrHandle[1])` 调用
4. **偏移校准**：注释掉 `runOffsetsCalculation(&motorVars[1])` 调用

#### 代码合并：故障检测和初始化统一

在修复电机2问题的同时，将原先各构建级别（LEVEL1~4）分散的重复代码进行了合并：

**Init 块合并**（原先 LEVEL1/2/3/4 各有独立 init 块，现合并为一个）：
- 公共部分：`flagSyncRun=true`, `ctrlState=CTRL_RUN`, `runMotor=MOTOR_RUN`, `motorVars[x].ctrlState=CTRL_RUN`, 清除 tripFlagDMC/TZ/CMPSS
- 不预设 `motorVars[x].runMotor=MOTOR_RUN`（所有级别统一，防止栅极时序问题）
- `speedRef` 通过 `#if` 区分：LEVEL4=0.5, LEVEL1=0.1, LEVEL2/3=0.02
- `lsw=ENC_ALIGNMENT` 仅 LEVEL3/4（使用编码器的级别）

**TZ 信号源禁用块合并**（原先 LEVEL1/2/3/4 各有独立 `#if` 块）：
- 公共部分：禁用 DCAEVT1 + CBC6 信号源，清除 TZ 标志
- LEVEL1 额外：写 `TZCTL=0x00FF`（所有 TZ 动作设为 DISABLE）+ 清除软件强制输出

**故障检测统一**（`runMotorControl()` 中）：
- **电压监控**：所有级别启用（`#if 1`），不再按级别跳过
- **TZ OST 过流检测**：移除 LEVEL 分支，所有级别统一走 TZ OST 检测代码
- 注：init 中已禁用 DCAEVT1/CBC6 信号源，CMPSS 不会误触发 OST

#### 当前保护状态（所有构建级别一致）

| 保护类型 | 状态 | 说明 |
|----------|------|------|
| 母线电压范围检测 (0x0002) | 软件生效 | Vdcbus 超出 15~30V 触发 |
| TZ OST 过流检测 (0x0001) | 软件检查生效 | 读 TZ 标志并停机 |
| CMPSS 硬件过流信号源 | 已禁用 | init 中断开 DCAEVT1/CBC6，防止调试阶段误触发 |

---

### 2026-03-10（下午）：FCL_LEVEL4 调试成功

#### 背景

FCL_LEVEL4 在 LEVEL3 基础上新增了速度闭环（PID 速度调节器）。  
按照 LEVEL1/2/3 相同的思路跳过故障检测后，**PWM 指示灯闪一下就灭**，经历三轮排查解决。

#### 问题一：栅极启用时序

**现象**：PWM 闪一下就灭。  
**根因**：init 预设 `runMotor=MOTOR_RUN` → line 619 无条件禁用栅极 → `runMotorControl` 永远检测不到 `STOP→RUN` 跳变。  
**修复**：不预设 `runMotor=MOTOR_RUN`，让 `runMotorControl` 统一负责启用栅极。

#### 问题二：CMPSS 误触发锁 PWM

**现象**：PWM 间歇性消失。  
**根因**：`runMotorControl` 每 ~50μs 清 TZ 标志，但 CMPSS 信号源仍使能，两次清除之间 CMPSS 再触发 OST。  
**修复**：init 中调用 `EPWM_disableTripZoneSignals(DCAEVT1/CBC6)` 断开信号源。

#### 问题三：TZ 动作 LOW 锁死 EPWM1A（`dual_axis_servo_drive_hal.c`）

**现象**：U 相上管始终无输出。  
**根因**：`HAL_setupMotorFaultProtection` 中 LEVEL4 的 TZ 动作为 `EPWM_TZ_ACTION_LOW`，ADC 未校准时 CMPSS 误触发 OST 直接锁死。  
**修复**：将 LEVEL4 的 TZ 动作改为 `DISABLE`（与 LEVEL1~3 一致），LEVEL5+ 再启用 LOW。

---

### 2026-03-10（上午）：FCL_LEVEL3 调试成功

- 编码器索引脉冲检测正常，电流环和速度环工作稳定
- 恢复母线电压检测代码（之前注释掉导致 `tripFlagDMC` 电压故障位无法清除）
- 完善 `FCL_runPICtrlWrap_M1()` 注释

---

### 2026-03-09：FCL_LEVEL2 调试 + 代码对比

- LEVEL2 电流限制从 9A 放宽到 15A（防 CMPSS 误触发）
- 添加 LEVEL2/3 的 TripZone 禁用配置
- 添加 LEVEL3 完整初始化代码

---

### 2026-03-08：硬件适配 + 注释

- **`dual_axis_servo_drive_hal.c`**：GPIO23 替换 GPIO99 作为 QEP1I（编码器索引引脚，匹配实际硬件）；修正 GPIO156 配置错误
- **`dual_axis_servo_drive_user.c`**：添加 EPWM 中断等待超时保护
- 全部源文件添加中文注释

---

## 二、与 Origin 版本差异总结

origin 路径：`origin/origin_dual_axis_servo_drive.c`

### 2.1 dual_axis_servo_drive.c 功能差异

| 类别 | Origin | 当前版本 |
|------|--------|----------|
| **全局变量** | `enableFlag=false`, `VdTesting=0`, `VqTesting=0.10`, `speedRef=0.1` | `enableFlag=true`(自动启动), `VdTesting=0.01`, `VqTesting=0.05`, `speedRef=0.02` |
| **LEVEL1~4 init** | 各级别分散的独立 init 块；LEVEL3 无 init 代码 | 合并为统一 init 块，speedRef 按级别区分 |
| **runMotor 预设** | LEVEL4 init 预设 `motorVars[x].runMotor=MOTOR_RUN`（有栅极时序 bug） | 所有级别不预设，由 `runMotorControl` 检测跳变统一启用 |
| **TZ 信号源禁用** | 仅 LEVEL1 有 TZ 禁用块 | 所有级别统一禁用 DCAEVT1/CBC6 |
| **电压监控** | 仅 LEVEL4+ 启用 | 所有级别启用 |
| **TZ OST 检测** | LEVEL1 写 `TZCTL` + 清标志；LEVEL2/3 仅清标志不检测 | 所有级别走 OST 检测并触发停机 |
| **clearTripFlagDMC** | 无条件 `=1`（周期性清除） | LEVEL1~4 不设 `=1`，保留故障锁存 |
| **_FLASH 模式** | 无条件 `ctrlState=CTRL_STOP` | LEVEL1~4 跳过，不覆盖自动运行 |
| **LEVEL2 电流限** | 9.0A | 15.0A（防 CMPSS 误触发） |
| **电机2** | 正常参与故障联锁和控制 | 完全隔离（runSyncControl/A2 task/offset cal） |
| **Motor2 状态变量** | 无 | 新增 `motor2_runMotor` / `motor2_ctrlState` 用于 Watch 窗口观察 |
| **buildLevel3_M2 bug** | `getVdc(&motorVars[0])`（错误，应为 motorVars[1]） | 已修复为 `getVdc(&motorVars[1])` |
| **中文注释** | 无 | 全文添加详细中文注释 |

### 2.2 dual_axis_servo_drive_hal.c 功能差异

| 类别 | Origin | 当前版本 |
|------|--------|----------|
| **QEP1 索引引脚** | GPIO99 | GPIO23（匹配实际硬件） |
| **GPIO156** | 配置错误（使用了 GPIO139 配置） | 已修正 |
| **TZ 动作** | LEVEL4 在 `#else` 分支，TZ 动作为 LOW | LEVEL4 加入 DISABLE 分支，LEVEL5+ 才用 LOW |
| **中文注释** | 无 | 全文添加 |

### 2.3 dual_axis_servo_drive_user.c 功能差异

| 类别 | Origin | 当前版本 |
|------|--------|----------|
| **EPWM 中断等待** | 无超时保护，可能死循环 | 添加超时机制 |
| **中文注释** | 无 | 全文添加 |

### 2.4 待完成项

- [ ] `M1_MAXIMUM_SCALE_VOLATGE` 从 66.3 改为 ~64.4（补偿 3% 增益 + 1.1V 偏移）
- [ ] 电机2重新接入驱动板后，恢复双轴联锁和 motor2 控制
- [ ] LEVEL5+ 的 CMPSS 硬件过流保护正式启用

---

## 三、Sources文件夹文件说明

### 核心文件

| 文件名 | 功能描述 |
|--------|----------|
| **dual_axis_servo_drive.c** | 主程序文件，包含电机控制主循环、状态机、ISR（中断服务程序） |
| **dual_axis_servo_drive_hal.c** | 硬件抽象层实现，配置GPIO、ADC、PWM、QEP、CMPSS、DAC、CLA等外设 |
| **dual_axis_servo_drive_user.c** | 用户参数初始化，包括电机参数、PI控制器、FCL参数、编码器参数等 |

### CLA任务文件

| 文件名 | 功能描述 |
|--------|----------|
| **dual_axis_servo_drive_cla_tasks.cla** | CLA（控制律加速器）任务定义，用于执行高速电流环控制 |
| **fcl_cla_code_dm.cla** | FCL（快速电流环）CLA实现代码，包含SVPWM、电流采样等 |

### 算法文件

| 文件名 | 功能描述 |
|--------|----------|
| **fcl_cpu_code_dm.c** | FCL CPU端代码，处理速度环、位置环等低速控制 |
| **dlog_4ch_f.c** | 4通道数据记录器，用于调试和波形采集 |

### 通信文件

| 文件名 | 功能描述 |
|--------|----------|
| **sfra_gui.c** | SFRA（软件频率响应分析）GUI接口 |
| **sfra_gui_scicomms_driverlib.c** | SCI通信驱动，用于与上位机GUI通信 |

---

## 四、FOC（磁场定向控制）架构

### 4.1 系统架构

- 双电机独立运行，共享同一套 CPU 调度与监控框架。
- 电流环由 CLA 执行，负责高速采样、变换、电流调节与 PWM 更新。
- 速度环、位置环、通信、保护与调试由 CPU 执行。
- 整体结构是"CLA 做快环，CPU 做慢环与系统管理"。

### 4.2 FCL（快速电流环）逻辑

- 速度环输出 Iq_ref，Id_ref 一般为 0 或弱磁参考。
- CLA 完成采样、Clark/Park 变换、电流 PI、反变换与 SVPWM 更新。
- PWM 驱动逆变器，逆变器驱动电机，电流反馈回到 ADC 构成闭环。
- 该链路是整个系统实时性要求最高的部分。

### 4.3 控制层级

| 层级 | 执行单元 | 控制周期 | 功能 |
|------|----------|----------|------|
| **电流环 (FCL)** | CLA | 50μs (20KHz) | Id/Iq电流控制、SVPWM、ADC采样 |
| **速度环** | CPU | 100μs (10KHz) | 速度PID控制、斜坡控制 |
| **位置环** | CPU | 1ms (1KHz) | 位置PI控制、轨迹规划 |
| **通信/监控** | CPU | 10-100ms | SCI通信、数据记录、故障诊断 |

### 4.4 关键算法模块

#### 4.4.1 电流采样与处理
- **ADC配置**：4个ADC模块（A/B/C/D），12位分辨率
- **采样触发**：EPWM SOCA事件触发
- **PPB（峰值保持）**：用于消除偏移量计算
- **采样相**：双电阻或三电阻采样（Iu, Iv, Iw）

#### 4.4.2 坐标变换
- **Clark变换**：三相静止坐标系 → 两相静止坐标系 (α, β)
- **Park变换**：两相静止坐标系 → 两相旋转坐标系 (d, q)
- **反Park变换**：旋转坐标系 → 静止坐标系

#### 4.4.3 PI控制器
- **电流环PI**：Kp = LS × BW, Ki = RS × BW
- **速度环PID**：Kp, Ki, Kd可调
- **位置环PI**：Kp, Ki可调

#### 4.4.4 SVPWM（空间矢量脉宽调制）
- 七段式SVPWM
- 调制指数限制：考虑死区时间和FCL计算时间
- 载波频率：10KHz

### 4.5 硬件资源分配

#### 电机1资源
| 资源类型 | 具体分配 |
|----------|----------|
| **PWM** | EPWM1 (U相), EPWM2 (V相), EPWM3 (W相) |
| **ADC** | ADCC (Iu), ADCB (Iv), ADCA (Iw), ADCD (Vdc) |
| **QEP** | EQEP1 (编码器) |
| **CMPSS** | CMPSS6 (U), CMPSS3 (V), CMPSS1 (W) |
| **GPIO** | GPIO0-5 (PWM), GPIO20-21 (QEP), GPIO19/24 (故障) |
| **中断** | EPWM1_INT (电流环) |

#### 电机2资源
| 资源类型 | 具体分配 |
|----------|----------|
| **PWM** | EPWM4 (U相), EPWM5 (V相), EPWM6 (W相) |
| **ADC** | ADCC (Iu), ADCB (Iv), ADCA (Iw), ADCD (Vdc) |
| **QEP** | EQEP2 (编码器) |
| **CMPSS** | CMPSS5 (U/V), CMPSS2 (W) |
| **GPIO** | GPIO6-11 (PWM), GPIO14/26/27 (控制) |
| **中断** | EPWM4_INT (电流环) |

### 4.6 保护机制

| 保护类型 | 实现方式 | 动作 |
|----------|----------|------|
| **过流保护** | CMPSS硬件比较器 | 立即关闭PWM |
| **过压保护** | ADC软件监测 | 软件限幅 |
| **欠压保护** | ADC软件监测 | 软件限幅 |
| **过热保护** | GPIO输入监测 | 软件停机 |
| **编码器故障** | QEP状态监测 | 软件停机 |

---

## 五、文件依赖关系

- dual_axis_servo_drive.c：主流程、状态机、ISR 调度入口。
- dual_axis_servo_drive_hal.c：外设初始化与硬件抽象层。
- dual_axis_servo_drive_user.c：电机参数、控制器参数与运行参数初始化。
- fcl_cpu_code_dm.c：CPU 侧 FCL 控制与包装逻辑。
- dual_axis_servo_drive_cla_tasks.cla、fcl_cla_code_dm.cla：CLA 任务入口与高速电流环实现。
- dlog_4ch_f.c、sfra_gui.c、sfra_gui_scicomms_driverlib.c：调试、频响分析与通信支持。

---

## 六、调试与监控

### 6.1 数据记录通道（DLOG）
- 通道1：Id电流
- 通道2：Iq电流
- 通道3：速度反馈
- 通道4：位置反馈

### 6.2 SFRA（软件频率响应分析）
- 用于测量系统开环/闭环频率响应
- 支持速度环、电流环调试
- 通过SCI与GUI通信

### 6.3 DAC输出（可选）
- DAC-A：旋转变压器载波激励
- DAC-B/C：通用调试输出

---

*文档创建日期：2026-03-03*
*项目：双轴伺服驱动 (FCL-QEP-F2837x)*
