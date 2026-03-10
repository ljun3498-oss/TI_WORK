# 双轴伺服驱动项目文档

**最后更新**: 2026-03-10

---

## 一、今日更改记录

### 2026-03-10：FCL_LEVEL3 调试成功，电机正常运行

- **主要成果**：
  - FCL_LEVEL3 构建级别调试成功，电机能够正常旋转
  - 编码器索引脉冲检测正常，位置反馈准确
  - 电流环和速度环工作稳定

- **关键修复**：
  1. **电压检测代码恢复**：
     - 文件：`dual_axis_servo_drive.c` 第2621-2633行
     - 问题：之前注释掉了母线电压检测代码，导致 `tripFlagDMC` 电压故障位无法清除
     - 修复：恢复 `#if(BUILDLEVEL != FCL_LEVEL1) && ...` 条件编译块，确保电压监控正常工作

  2. **FCL函数注释完善**：
     - 文件：`fcl_cpu_code_dm.c` 第545-552行
     - 添加 `FCL_runPICtrlWrap_M1()` 详细功能说明，包括：
       - 触发CLA Task4处理QEP编码器标志
       - 根据实时母线电压更新PI控制器增益
       - 计算反电动势前馈补偿
       - 更新电流反馈值到用户可见变量
       - 同步CPU与CLA状态，清除中断标志

  3. **FCL调用处注释完善**：
     - 文件：`dual_axis_servo_drive.c` 第1349-1355行
     - 添加 `FCL_runPICtrlWrap_M1()` 调用处的详细说明
     - 说明与 `FCL_runPICtrl_M1()` 的配合关系

- **技术理解深化**：
  - 理解了 `FCL_runPICtrl_M1()` 和 `FCL_runPICtrlWrap_M1()` 的分工协作关系
  - 掌握了 CLA Task1/Task2/Task4 的任务分配：
    - Task1：QEP位置计算（电机1）
    - Task2：PI控制器Q轴计算（电机1）
    - Task4：QEP标志处理和低速计算（电机1）
  - 理解了编码器自动找索引流程：
    - ENC_ALIGNMENT：施加直流电流锁定转子
    - ENC_WAIT_FOR_INDEX：自动旋转寻找索引脉冲
    - ENC_CALIBRATION_DONE：校准完成，正常运行

- **当前状态**：
  - 构建级别：FCL_LEVEL3（电流环+速度环控制）
  - 控制模式：PI_CNTLR（PI控制器）
  - 电机状态：正常运行，可响应速度指令

---

### 2026-03-09：与原始文件 `origin_dual_axis_servo_drive.c` 详细对比

- **对比文件路径**：
  - 修改后：`c:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\sources\dual_axis_servo_drive.c`
  - 原始版：`c:\Users\JUNLI\workspace_ccstheia\origin\origin_dual_axis_servo_drive.c`

- **主要差异点**：

  1. **FCL_LEVEL3 初始化代码**：
     - 原始版：完全缺少 FCL_LEVEL3 的初始化代码块
     - 修改版：新增 FCL_LEVEL3 初始化代码，显式设置 `flagSyncRun=true`、`ctrlState=CTRL_RUN`、双电机 `runMotor/ctrlState` 为运行态

  2. **TripZone 配置**：
     - 原始版：缺少 FCL_LEVEL3 的 TripZone 配置
     - 修改版：为 FCL_LEVEL3 添加完整的 TripZone 禁用配置，包括禁用信号源、设置动作为 DISABLE、清除标志

  3. **全局变量调整**：
     - `enableFlag`：由 `false` 改为 `true`，实现自动启动
     - `VdTesting`：由 `0.0` 改为 `0.01`，降低功率
     - `VqTesting`：由 `0.10` 改为 `0.05`，降低功率
     - `speedRef`：由 `0.1` 改为 `0.02`，降低启动速度

  4. **IdRef_start 调整**：
     - 原始版：`0.2`（标幺值）
     - 修改版：保留 `0.2`，但在运行时使用 `0.05` 降低功率

  5. **中文注释添加**：
     - 原始版：英文注释
     - 修改版：大量添加中文注释，包括函数说明、参数解释、流程说明等

  6. **状态机函数注释**：
     - 原始版：无详细注释
     - 修改版：为状态机函数添加详细的中文注释，包括功能描述、参数说明、返回值等

  7. **构建级别处理**：
     - 原始版：仅处理 FCL_LEVEL1 和 FCL_LEVEL2
     - 修改版：完善 FCL_LEVEL3 的处理，包括初始化、TripZone 配置、运行状态管理

  8. **_FLASH 模式初始化逻辑**：
     - 原始版：无条件设置 `ctrlState = CTRL_STOP`
     - 修改版：仅在非 FCL_LEVEL1/2/3 下才设置 `ctrlState = CTRL_STOP`，避免覆盖自动运行配置

  9. **clearTripFlagDMC 设置逻辑**：
     - 原始版：无条件设置 `clearTripFlagDMC = 1`
     - 修改版：仅在非 FCL_LEVEL1/2/3 下才设置，避免启动时触发清故障流程

  10. **FCL_LEVEL2 TripZone 配置**：
      - 原始版：缺少 FCL_LEVEL2 的 TripZone 配置
      - 修改版：为 FCL_LEVEL2 添加 TripZone 禁用配置，与 FCL_LEVEL1 保持一致

  11. **FCL_LEVEL2 电流限制调整**：
      - 原始版：电流限制为 9.0A
      - 修改版：临时放宽到 15.0A，避免 CMPSS 误触发

  12. **FCL_LEVEL2 buildLevel2 函数修改**：
      - 原始版：缺少 `else` 分支处理 `ENC_WAIT_FOR_INDEX` 状态
      - 修改版：添加 `else` 分支，在该状态下保持电压设置

  13. **FCL_LEVEL3 buildLevel3 函数修改**：
      - 原始版：电机2 在 `ENC_ALIGNMENT` 状态下设置 `motorVars[1].state` 标志
      - 修改版：移除了 `motorVars[1].state` 标志设置，简化逻辑

  14. **DAC 宏定义**：
      - 原始版：`#define  DAC_MACRO_PU(A)  ((1.0f + A) * 2048)`
      - 修改版：添加 `#define DACOUT_EN 1` 宏定义

  15. **函数原型注释**：
      - 原始版：简单的英文注释
      - 修改版：详细的中文注释，说明函数功能

  16. **变量注释**：
      - 原始版：简单的英文注释
      - 修改版：详细的中文注释，说明变量用途

  17. **SFRA 注释**：
      - 原始版：英文注释
      - 修改版：详细的中文注释，说明 SFRA 功能

  18. **状态机函数注释**：
      - 原始版：无详细注释
      - 修改版：为每个状态机函数添加详细的中文注释，包括功能描述、参数说明、返回值等

  19. **构建级别注释**：
      - 原始版：英文注释
      - 修改版：详细的中文注释，说明每个构建级别的功能

  20. **函数内部注释**：
      - 原始版：简单的英文注释
      - 修改版：详细的中文注释，说明每个代码块的功能

- **功能相关改动（影响运行行为）**：
  1. **FCL_LEVEL3 启动流程**：添加完整的初始化代码，确保电机能够进入运行状态
  2. **功率优化**：降低 `VdTesting`、`VqTesting` 和 `speedRef`，减少启动功率
  3. **TripZone 保护**：为 FCL_LEVEL3 添加与 FCL_LEVEL1/2 一致的 TripZone 配置，避免误触发
  4. **自动启动**：设置 `enableFlag=true`，实现系统自动启动
  5. **状态管理优化**：优化 `_FLASH` 模式下的初始化逻辑，避免覆盖自动运行配置
  6. **故障处理优化**：优化 `clearTripFlagDMC` 设置逻辑，避免启动时触发清故障流程

- **非功能改动（可读性/维护性）**：
  1. **中文注释**：将英文注释改为中文，并补充详细说明
  2. **函数文档**：为关键函数添加详细的函数文档，包括功能、参数、返回值等
  3. **代码结构**：优化代码结构，提高可读性
  4. **注释完整性**：为所有函数、变量、代码块添加详细的中文注释

- **修复的问题**：
  1. **编码器不计数**：通过添加 FCL_LEVEL3 初始化代码，解决编码器 QPOSCNT 停止计数的问题
  2. **TripZone 故障**：通过禁用 TripZone 信号源和设置动作为 DISABLE，解决 TripZone 故障问题
  3. **runMotor 保持 STOP**：通过同时设置全局和 per-motor 的 `runMotor` 和 `ctrlState`，解决状态被覆盖的问题
  4. **功率过高**：通过降低电压和速度参考值，解决启动功率过高的问题
  5. **FCL_LEVEL3 无法启动**：通过添加完整的初始化代码，解决 FCL_LEVEL3 无法进入运行状态的问题
  6. **状态被覆盖**：通过优化 `_FLASH` 模式下的初始化逻辑，避免自动运行配置被覆盖

- **代码统计**：
  - 总行数变化：约 1166 行新增，904 行删除
  - 主要增加：中文注释、FCL_LEVEL3 初始化代码、TripZone 配置
  - 主要删除：英文注释、冗余代码

- **总结**：
  本次修改主要针对 FCL_LEVEL3 的启动问题和功率优化，通过添加完整的初始化代码、优化 TripZone 配置、降低电压和速度参考值，成功解决了编码器不计数、TripZone 故障、runMotor 保持 STOP、功率过高等问题。同时，通过添加详细的中文注释，提高了代码的可读性和可维护性。

### 2026-03-08：与原始文件 `origin_dual_axis_servo_drive_user.c` 对比

- **对比文件路径**：
  - 修改后：`c:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\sources\dual_axis_servo_drive_user.c`
  - 原始版：`c:\Users\JUNLI\workspace_ccstheia\origin\origin_dual_axis_servo_drive_user.c`

- **主要差异点**：

  1. **全局变量注释改进**：
     - 原始版：简单的英文注释
     - 修改版：添加详细的中文注释，使用 Doxygen 风格的函数文档

  2. **函数注释改进**：
     - 原始版：简单的英文注释
     - 修改版：为所有主要函数添加详细的中文注释，包括功能描述、参数说明、返回值说明

  3. **代码内注释改进**：
     - 原始版：简单的英文注释
     - 修改版：为所有代码行添加详细的中文注释

  4. **EPWM 中断等待超时保护**：
     - 原始版：无超时保护，可能死循环
     - 修改版：添加超时机制，防止死循环

- **功能相关改动（影响运行行为）**：
  1. **EPWM 中断等待超时保护**：添加超时机制，防止死循环

- **非功能改动（可读性/维护性）**：
  1. **中文注释**：将英文注释改为中文，并补充详细说明
  2. **函数文档**：为关键函数添加详细的函数文档，包括功能、参数、返回值等
  3. **注释完整性**：为所有函数、变量、代码块添加详细的中文注释

- **总结**：
  本次修改主要针对代码可读性和可维护性的改进，添加了详细的中文注释和函数文档。同时，为 EPWM 中断等待添加了超时保护机制，提高了系统的可靠性。

### 2026-03-08：与原始文件 `origin_dual_axis_servo_drive_hal.c` 对比

- **对比文件路径**：
  - 修改后：`c:\Users\JUNLI\workspace_ccstheia\dual_axis_servo_drive_fcl_qep_f2837x\sources\dual_axis_servo_drive_hal.c`
  - 原始版：`c:\Users\JUNLI\workspace_ccstheia\origin\origin_dual_axis_servo_drive_hal.c`

- **主要差异点**：

  1. **全局变量注释改进**：
     - 原始版：简单的英文注释
     - 修改版：添加详细的中文注释，说明变量的用途和含义

  2. **函数注释改进**：
     - 原始版：简单的英文注释
     - 修改版：为所有主要函数添加详细的中文注释，包括功能描述、参数说明、返回值说明，使用 Doxygen 风格

  3. **代码内注释改进**：
     - 原始版：简单的英文注释
     - 修改版：为所有代码行添加详细的中文注释，说明每个步骤的功能

  4. **GPIO23 编码器索引引脚配置**：
     - 原始版：使用 GPIO99 作为 QEP1I（电机1的编码器索引相）
     - 修改版：改为 GPIO23 作为 QEP1I，与实际硬件连接一致

  5. **GPIO156 配置修正**：
     - 原始版：GPIO156 的配置错误，使用了 GPIO139 的配置
     - 修改版：修正为正确的 GPIO156 配置

- **功能相关改动（影响运行行为）**：
  1. **GPIO23 编码器索引引脚**：将电机1的编码器索引引脚从 GPIO99 改为 GPIO23，确保与硬件连接一致
  2. **GPIO156 配置修正**：修正 GPIO156 的配置错误，避免引脚冲突

- **非功能改动（可读性/维护性）**：
  1. **中文注释**：将英文注释改为中文，并补充详细说明
  2. **函数文档**：为关键函数添加详细的函数文档，包括功能、参数、返回值等
  3. **注释完整性**：为所有函数、变量、代码块添加详细的中文注释

- **总结**：
  本次修改主要针对代码可读性和可维护性的改进，添加了详细的中文注释和函数文档。同时，修正了 GPIO23（编码器索引引脚）和 GPIO156 的配置，确保与实际硬件连接一致。

---

## 二、Sources文件夹文件说明

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

## 三、FOC（磁场定向控制）架构

### 3.1 系统架构

- 双电机独立运行，共享同一套 CPU 调度与监控框架。
- 电流环由 CLA 执行，负责高速采样、变换、电流调节与 PWM 更新。
- 速度环、位置环、通信、保护与调试由 CPU 执行。
- 整体结构是"CLA 做快环，CPU 做慢环与系统管理"。

### 3.2 FCL（快速电流环）逻辑

- 速度环输出 Iq_ref，Id_ref 一般为 0 或弱磁参考。
- CLA 完成采样、Clark/Park 变换、电流 PI、反变换与 SVPWM 更新。
- PWM 驱动逆变器，逆变器驱动电机，电流反馈回到 ADC 构成闭环。
- 该链路是整个系统实时性要求最高的部分。

### 3.3 控制层级

| 层级 | 执行单元 | 控制周期 | 功能 |
|------|----------|----------|------|
| **电流环 (FCL)** | CLA | 50μs (20KHz) | Id/Iq电流控制、SVPWM、ADC采样 |
| **速度环** | CPU | 100μs (10KHz) | 速度PID控制、斜坡控制 |
| **位置环** | CPU | 1ms (1KHz) | 位置PI控制、轨迹规划 |
| **通信/监控** | CPU | 10-100ms | SCI通信、数据记录、故障诊断 |

### 3.4 关键算法模块

#### 3.4.1 电流采样与处理
- **ADC配置**：4个ADC模块（A/B/C/D），12位分辨率
- **采样触发**：EPWM SOCA事件触发
- **PPB（峰值保持）**：用于消除偏移量计算
- **采样相**：双电阻或三电阻采样（Iu, Iv, Iw）

#### 3.4.2 坐标变换
- **Clark变换**：三相静止坐标系 → 两相静止坐标系 (α, β)
- **Park变换**：两相静止坐标系 → 两相旋转坐标系 (d, q)
- **反Park变换**：旋转坐标系 → 静止坐标系

#### 3.4.3 PI控制器
- **电流环PI**：Kp = LS × BW, Ki = RS × BW
- **速度环PID**：Kp, Ki, Kd可调
- **位置环PI**：Kp, Ki可调

#### 3.4.4 SVPWM（空间矢量脉宽调制）
- 七段式SVPWM
- 调制指数限制：考虑死区时间和FCL计算时间
- 载波频率：10KHz

### 3.5 硬件资源分配

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

### 3.6 保护机制

| 保护类型 | 实现方式 | 动作 |
|----------|----------|------|
| **过流保护** | CMPSS硬件比较器 | 立即关闭PWM |
| **过压保护** | ADC软件监测 | 软件限幅 |
| **欠压保护** | ADC软件监测 | 软件限幅 |
| **过热保护** | GPIO输入监测 | 软件停机 |
| **编码器故障** | QEP状态监测 | 软件停机 |

---

## 四、文件依赖关系

- dual_axis_servo_drive.c：主流程、状态机、ISR 调度入口。
- dual_axis_servo_drive_hal.c：外设初始化与硬件抽象层。
- dual_axis_servo_drive_user.c：电机参数、控制器参数与运行参数初始化。
- fcl_cpu_code_dm.c：CPU 侧 FCL 控制与包装逻辑。
- dual_axis_servo_drive_cla_tasks.cla、fcl_cla_code_dm.cla：CLA 任务入口与高速电流环实现。
- dlog_4ch_f.c、sfra_gui.c、sfra_gui_scicomms_driverlib.c：调试、频响分析与通信支持。

---

## 五、调试与监控

### 5.1 数据记录通道（DLOG）
- 通道1：Id电流
- 通道2：Iq电流
- 通道3：速度反馈
- 通道4：位置反馈

### 5.2 SFRA（软件频率响应分析）
- 用于测量系统开环/闭环频率响应
- 支持速度环、电流环调试
- 通过SCI与GUI通信

### 5.3 DAC输出（可选）
- DAC-A：旋转变压器载波激励
- DAC-B/C：通用调试输出

---

*文档创建日期：2026-03-03*
*项目：双轴伺服驱动 (FCL-QEP-F2837x)*
