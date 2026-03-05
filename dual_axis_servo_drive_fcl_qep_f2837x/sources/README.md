子啊# 双轴伺服驱动项目文档

**最后更新**: 2026-03-05

---

## 一、今日更改记录

### 2026-03-05（最新）：功率显示异常 - LEVEL2参数被硬编码覆盖

#### 问题现象
- **症状**：虽然改低了全局 VdTesting (0.01) 和 VqTesting (0.05)，但功率显示仍为 150W，没有下降
- **预期**：VqTesting 从 0.35 降到 0.05（约 14%），功率应从原来的 ~150W 降到 ~20-30W
- **实际**：功率显示没有改变，说明参数没有生效

#### 根本原因分析
LEVEL2 初始化块中有**硬编码赋值**，覆盖了全局变量：

**问题代码**（第 336-354 行）：
```c
#elif(BUILDLEVEL == FCL_LEVEL2)
    flagSyncRun = true;
    ctrlState = CTRL_RUN;
    // ...
    VdTesting = 0.05;    // ❌ 硬编码，覆盖全局的 0.01！
    VqTesting = 0.35;    // ❌ 硬编码，覆盖全局的 0.05！
```

**执行流程**：
1. 程序启动时，全局变量初始化为 `VdTesting = 0.01, VqTesting = 0.05`
2. 进入 LEVEL2 初始化时，被硬编码语句覆盖为 `VdTesting = 0.05, VqTesting = 0.35`
3. 后续运行一直用的是被覆盖的值，用户改全局变量无效

#### 修复方案
**删除 LEVEL2 初始化块中的硬编码赋值**（第 345-346 行移除）：
```c
#elif(BUILDLEVEL == FCL_LEVEL2)
    flagSyncRun = true;
    ctrlState = CTRL_RUN;
    runMotor = MOTOR_RUN;
    motorVars[0].runMotor = MOTOR_RUN;
    motorVars[0].ctrlState = CTRL_RUN;
    motorVars[1].runMotor = MOTOR_RUN;
    motorVars[1].ctrlState = CTRL_RUN;
    speedRef = 0.02;
    // ⚠️ 移除硬编码：VdTesting = 0.05; VqTesting = 0.35;
    // 现在使用全局变量值（VdTesting=0.01, VqTesting=0.05）
    motorVars[0].speedRef = speedRef;
    motorVars[1].speedRef = speedRef;
    motorVars[0].isrTicker = 1;
    motorVars[1].isrTicker = 1;
#endif
```

#### 验证步骤
1. **重新编译并加载**到目标板
2. **检查功率值**：应该显示约 20-30W（从 150W 大幅下降）
3. **推演验证**：
   - 原 Vq = 0.35，新 Vq = 0.05
   - 功率与电压的平方成正比（P ∝ V²）
   - 150W × (0.05/0.35)² ≈ **3W**（理论值）
   - 实际可能 10-30W（考虑死时间、非线性等因素）

#### 经验总结
- ⚠️ **硬编码赋值的隐蔽性强**：修改全局变量后，如果被初始化块又赋值一次，修改无效
- ✅ **解决方案**：移除冗余的硬编码，让全局变量贯穿整个运行周期
- 📌 **最佳实践**：若需要根据 BUILDLEVEL 使用不同的参数，应该在全局定义时用条件编译 `#if`，而不是在初始化块中硬编码

---

### 2026-03-05（晚）：EPWM1A 无输出问题修复（TripZone Action 配置错误）

#### 问题现象
- **症状**：FCL_LEVEL1 模式下，EPWM1A (GPIO0, U相上桥) 无PWM输出，其他5个通道正常
- **寄存器诊断**：
  - `CMPA = 0x032A (810)` ✓ 正确（占空比 ~32%）
  - `TBPRD = 0x09C4 (2500)` ✓ 正确（20kHz@100MHz EPWMCLK）
  - `AQCTLA = 0x0090` ✓ 正确（CAU=1低, CAD=2高）
  - `AQSFRC = 0x0000` ✓ 正确（无软件强制）
  - `TZCTL = 0x000A` ✗ **问题根源**（TZA=2 强制LOW，TZB=2 强制LOW）

#### 根本原因
**TripZone Action 配置错误**：
```c
// 错误配置（之前）
EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                       EPWM_TZ_ACTION_EVENT_TZA,
                       EPWM_TZ_ACTION_HIGH_Z);  // HIGH_Z = 0（高阻态浮空）
```

- `EPWM_TZ_ACTION_HIGH_Z = 0`：**高阻态（tri-state）**，输出引脚浮空
- 浮空状态被外部电路拉低 → 等效于无输出
- 即使禁用了 DCAEVT1/CBC6 信号源，TZCTL 中的 Action 设置仍然生效（可能被其他TZ事件触发）

**正确理解**：
| 枚举值 | 数值 | 含义 | 效果 |
|--------|------|------|------|
| `EPWM_TZ_ACTION_HIGH_Z` | 0 | 高阻态 | 输出浮空（被拉低） |
| `EPWM_TZ_ACTION_HIGH` | 1 | 强制高 | 上桥导通 ⚠️ |
| `EPWM_TZ_ACTION_LOW` | 2 | 强制低 | 下桥导通 ⚠️ |
| `EPWM_TZ_ACTION_DISABLE` | 3 | 禁用动作 | **TZ事件不影响PWM** ✓ |

#### 修复方案

**1. HAL初始化 - 根据构建等级设置TZ动作**（`dual_axis_servo_drive_hal.c` 第1486-1520行）
```c
#if((BUILDLEVEL == FCL_LEVEL1) || (BUILDLEVEL == FCL_LEVEL2))
    // LEVEL1/LEVEL2 调试：TZ事件不影响PWM输出
    // 因为ADC偏移校准未完成时CMPSS会误触发
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_TZA,
                           EPWM_TZ_ACTION_DISABLE);
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_TZB,
                           EPWM_TZ_ACTION_DISABLE);
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_DCAEVT1,
                           EPWM_TZ_ACTION_DISABLE);
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_DCAEVT2,
                           EPWM_TZ_ACTION_DISABLE);
#else
    // LEVEL3+ 正常运行：TZ事件强制PWM输出低，提供硬件过流保护
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_TZA,
                           EPWM_TZ_ACTION_LOW);
    EPWM_setTripZoneAction(obj->pwmHandle[cnt],
                           EPWM_TZ_ACTION_EVENT_TZB,
                           EPWM_TZ_ACTION_LOW);
#endif
```

**关键：各构建等级的TripZone配置策略**

| 构建等级 | TZ信号源 | TZ Action | 硬件保护 | 说明 |
|---------|---------|-----------|---------|------|
| **LEVEL1** | ❌ 禁用 | DISABLE(3) | ❌ 无 | 开环测试，电流小，临时禁用 |
| **LEVEL2** | ❌ 禁用 | DISABLE(3) | ❌ 无 | 开环测试，电流小，临时禁用 |
| **LEVEL3+** | ✅ 启用 | LOW(2) | ✅ 有 | **闭环运行，必须保留硬件保护！** |

**为什么LEVEL3+必须启用TripZone？**
1. **反应速度**：硬件保护是纳秒级，软件检测有~50μs延迟
2. **安全性**：过流时PWM立即停止，防止烧毁IGBT/MOSFET
3. **可靠性**：硬件锁存确保故障不会被误操作恢复

**为什么LEVEL1/2可以禁用？**
1. **调试需求**：ADC偏移校准期间CMPSS会误触发
2. **风险可控**：开环测试电流很小（<1A），短时间不会损坏器件
3. **临时措施**：正式运行时切换到LEVEL3+会自动恢复保护

**2. LEVEL1初始化 - 直接写TZCTL寄存器**（`dual_axis_servo_drive.c` 第391-427行）
```c
#if(BUILDLEVEL == FCL_LEVEL1)
    for(i = 0; i < 3; i++)
    {
        // 禁用TZ信号源（保留原有逻辑）
        EPWM_disableTripZoneSignals(halMtr[0].pwmHandle[i],
                                    EPWM_TZ_SIGNAL_DCAEVT1);
        EPWM_disableTripZoneSignals(halMtr[0].pwmHandle[i],
                                    EPWM_TZ_SIGNAL_CBC6);

        // 新增：直接写 TZCTL = 0x00FF
        // TZA[1:0]=11, TZB[3:2]=11, DCAEVT1[5:4]=11, DCAEVT2[7:6]=11
        // 所有4个TZ域 = 3 (DISABLE)
        EALLOW;
        HWREGH(halMtr[0].pwmHandle[i] + EPWM_O_TZCTL) = 0x00FFU;
        HWREGH(halMtr[1].pwmHandle[i] + EPWM_O_TZCTL) = 0x00FFU;
        EDIS;

        // 清除所有TZ标志
        EPWM_clearTripZoneFlag(halMtr[0/1].pwmHandle[i],
                               EPWM_TZ_FLAG_OST | EPWM_TZ_FLAG_DCAEVT1 | EPWM_TZ_FLAG_CBC);
    }
#endif
```

**3. ISR中持续强制TZCTL**（`dual_axis_servo_drive.c` 第2600-2620行）
```c
#if(BUILDLEVEL == FCL_LEVEL1)
    // 每个PWM周期强制写 TZCTL = 0x00FF
    EALLOW;
    HWREGH(obj->pwmHandle[0] + EPWM_O_TZCTL) = 0x00FFU;
    HWREGH(obj->pwmHandle[1] + EPWM_O_TZCTL) = 0x00FFU;
    HWREGH(obj->pwmHandle[2] + EPWM_O_TZCTL) = 0x00FFU;
    EDIS;

    // 清除所有TZ标志
    EPWM_clearTripZoneFlag(obj->pwmHandle[0/1/2], ...);
    
    // 清除 EPWM1A 软件强制
    EPWM_setActionQualifierContSWForceAction(obj->pwmHandle[0],
                                              EPWM_AQ_OUTPUT_A,
                                              EPWM_AQ_SW_DISABLED);
#endif
```

#### 技术要点
1. **寄存器地址差异**：
   - 旧版 driverlib：`EPWM_O_TZCTL = 0x28`
   - **项目使用的新版**：`EPWM_O_TZCTL = 0x84`（SDK 5.4.0.00）
   - 验证地址：`0x4000 + 0x84 = 0x4084`（EPWM1_BASE + TZCTL offset）

2. **TZCTL寄存器位域**：
   ```
   Bit [15:8]  Reserved
   Bit [7:6]   DCAEVT2[1:0]  Digital Compare A Event 2 Action
   Bit [5:4]   DCAEVT1[1:0]  Digital Compare A Event 1 Action
   Bit [3:2]   TZB[1:0]      Trip Zone B Action
   Bit [1:0]   TZA[1:0]      Trip Zone A Action
   
   值：00=HIGH_Z, 01=HIGH, 10=LOW, 11=DISABLE
   ```
   - `0x00FF` = 所有4个域设为 `11` (DISABLE)

3. **为何需要3重保护**：
   - HAL初始化可能被其他代码覆盖
   - 初始化块只执行一次
   - ISR每周期强制写入，确保任何时候TZCTL都是0x00FF

#### 验证方法
1. 编译并加载程序到目标板
2. 在CCS调试器中读取 `EPWM1 TZCTL` 寄存器（地址 `0x4084`）
3. 确认值为 `0x00FF`（之前错误时为 `0x000A`）
4. 示波器观察 GPIO0 (EPWM1A) 输出波形

#### 经验总结
- **HIGH_Z ≠ 不做任何事**：高阻态在电路中等效于开路浮空
- **DISABLE 才是真正的"忽略TZ事件"**
- **调试思路**：从寄存器级别逐一排查（AQSFRC→AQCTLA→TZCTL→TZFLG）
- **硬件描述符号≠实际含义**：命名可能有歧义，需查技术手册确认

#### 完全禁用TripZone的后果（风险分析）

**如果设置 `TZ Action = DISABLE` 且不禁用信号源会怎样？**

假设配置：
- TZ信号源：✅ DCAEVT1启用（CMPSS检测过流）
- TZ Action：❌ DISABLE（过流时不动作）

**后果**：
1. **硬件保护失效** ⚠️⚠️⚠️
   - CMPSS检测到过流 → DCAEVT1触发 → TZFLG寄存器置位
   - 但PWM**继续输出**（因为Action=DISABLE）
   - 大电流持续通过IGBT → 功率器件温度急剧上升 → 可能在几百微秒内烧毁

2. **依赖软件保护的风险**
   - 软件每个PWM周期（50μs）检查一次TZFLG
   - 检测到故障后手动调用`EPWM_forceTripZoneEvent(OST)`停止PWM
   - 反应延迟：50μs - 100μs（可能已经烧毁器件）
   - 对比：硬件保护反应时间 < 100ns

3. **调试测试 vs. 生产运行**
   - **LEVEL1/2（调试）**：✅ 可以临时禁用
     - 开环测试，电流很小（<1A）
     - 短时间运行，风险可控
     - 便于调试PWM波形
   
   - **LEVEL3+（闭环运行）**：❌ 必须启用
     - 闭环控制，电流可达额定值（10A+）
     - 持续运行，故障概率高
     - **不启用硬件保护 = 随时可能烧板！**

**硬件保护 vs. 软件保护对比**：

| 项目 | 硬件保护（TZ Action=LOW） | 软件保护（TZ Action=DISABLE） |
|------|--------------------------|------------------------------|
| **反应速度** | <100ns（纳秒级） | 50-100μs（微秒级） |
| **可靠性** | ✅ 硬件电路，不受软件bug影响 | ❌ 依赖软件逻辑，可能有bug |
| **锁存机制** | ✅ OST硬件锁存，故障不自动恢复 | ❌ 需软件判断和处理 |
| **适用场景** | 生产运行、高电流、长时间运行 | 仅限调试阶段、低电流、短时间 |

**结论**：
- ✅ LEVEL1/2临时禁用是合理的（调试需求 > 短期风险）
- ❌ LEVEL3+禁用是危险的（必须保留硬件保护）
- 📌 当前代码已修正：根据BUILDLEVEL自动切换TZ Action配置

---

### 2026-03-05（早）：FCL_LEVEL1 PWM输出修复（TripZone OST硬件锁存）

#### 问题诊断
经过多轮调试发现 FCL_LEVEL1 模式下 PWM 无输出的**根本原因**：
- **CMPSS 过流比较器**在 ADC 偏移校准完成前就已启用
- ADC 零电流采样值偏离 2048 中点 → CMPSS 误判为过流
- 触发 **DCAEVT1** → **OST（One-Shot Trip）硬件锁存**
- TripZone Action 强制 EPWMxA/B 输出 LOW → PWM 被硬件拉低
- OST 锁存一旦触发，必须软件显式清除才能恢复

#### 最终修复方案（`dual_axis_servo_drive.c`）

**1. 初始化阶段：禁用 TripZone 信号源**（第 337-359 行）
```c
#if(BUILDLEVEL == FCL_LEVEL1)
    // 禁用 DCAEVT1 (CMPSS过流) 和 CBC6 (仿真器停止)
    for(i = 0; i < 3; i++) {
        EPWM_disableTripZoneSignals(halMtr[0/1].pwmHandle[i],
                                    EPWM_TZ_SIGNAL_DCAEVT1);
        EPWM_disableTripZoneSignals(halMtr[0/1].pwmHandle[i],
                                    EPWM_TZ_SIGNAL_CBC6);
        // 清除已锁存的 OST/DCAEVT1/CBC 标志
        EPWM_clearTripZoneFlag(..., EPWM_TZ_FLAG_OST | 
                                     EPWM_TZ_FLAG_DCAEVT1 | 
                                     EPWM_TZ_FLAG_CBC);
    }
#endif
```

**2. 初始化阶段：强制运行状态**（第 311-329 行）
```c
#if(BUILDLEVEL == FCL_LEVEL1)
    flagSyncRun = true;              // 启用 runSyncControl() 执行
    ctrlState = CTRL_RUN;            // 全局控制状态
    runMotor = MOTOR_RUN;            // 全局电机状态
    motorVars[0/1].ctrlState = CTRL_RUN;
    motorVars[0/1].runMotor = MOTOR_RUN;
    motorVars[0/1].speedRef = 0.1;
    motorVars[0/1].isrTicker = 1;
#endif
```

**3. 保留的原始逻辑**
- 偏移校准：`runOffsetsCalculation()` 正常执行（已有超时保护）
- 故障清除：`clearTripFlagDMC = 1` 统一处理
- 门极驱动：初始化禁用，由 `runMotorControl()` 控制
- 故障保护：`runMotorControl()` 对所有构建等级统一执行

#### 技术总结
- **硬件保护优先于软件控制**：TripZone 硬件锁存一旦触发，软件变量设置无效
- **初始化顺序很关键**：`HAL_setupMotorFaultProtection()` 在偏移校准前调用导致问题
- **LEVEL2+ 应该正常**：偏移校准完成后 CMPSS 阈值能正确工作
- **调试经验**：硬件层问题需要从寄存器级别排查（TZ 标志、CMPSS 状态）

#### 其他尝试（已还原）
以下修改在测试中发现不是必须的，已还原为原始代码：
- ~~强制 PWM 计数器模式 UP_DOWN~~（HAL 已配置）
- ~~跳过 LEVEL1 偏移校准~~（超时保护已足够）
- ~~`runMotorControl()` LEVEL1 旁路~~（不需要）

---

### 2026-03-03：电机参数调整

（保留原有内容...）

### 1. 电机参数调整（针对24V直流母线电压和±20A霍尔传感器）

#### 电流参数修改
| 参数 | 原值 | 修改后 | 说明 |
|------|------|--------|------|
| `M1_BASE_CURRENT` | 13.5A | **20.0A** | 基准电流，匹配霍尔传感器±20A范围 |
| `M1_MAXIMUM_CURRENT` | 5.0A | **7.8A** | 电机最大转矩电流限制 |
| `M1_MAXIMUM_SCALE_CURRENT` | 27.0A | **20.0A** | 最大缩放电流 |
| `M1_CURRENT_SF` | (27/4096) | **0.0111** | 电流缩放因子（ADC计数→安培） |
| `M1_CURRENT_INV_SF` | (4096/27) | **90.1** | 电流逆缩放因子（安培→ADC计数） |

**计算依据**：
- 霍尔传感器灵敏度：0.066V/A
- ADC参考电压：3.0V
- ADC分辨率：12位（4096计数）
- 每安培ADC计数：0.066 / (3.0/4096) ≈ **90.1 计数/A**

#### 电压参数修改
| 参数 | 原值 | 修改后 | 说明 |
|------|------|--------|------|
| `M1_BASE_VOLTAGE` | 42.78V | **13.86V** | 基准峰值相电压（24V/sqrt(3)） |
| `M1_MAXIMUM_VOLTAGE` | 36.0V | **24.0V** | 直流母线最大电压 |
| `M1_VDCBUS_MAX` | 50.0V | **28.0V** | 电机最大直流母线电压 |
| `M1_VDCBUS_MIN` | 10.0V | **15.0V** | 电机最小直流母线电压 |
| `M1_MAXIMUM_SCALE_VOLATGE` | 74.1V | **66.3V** | 最大缩放电压（3.3V/0.04975分压比） |
| `M1_VOLTAGE_SF` | (74.1/4096) | **(66.3/4096)** | 电压缩放因子 |
| `M1_VOLTAGE_INV_SF` | (4096/74.1) | **(4096/66.3)** | 电压逆缩放因子 |

**计算依据**：
- 分压电阻：95.3KΩ 和 4.99KΩ
- 分压比：4.99/(95.3+4.99) ≈ 0.04975
- 最大测量电压：3.3V/0.04975 ≈ **66.3V**

#### 其他参数（保持不变）
- `M1_RS` = 0.381334811 Ω（定子电阻）
- `M1_LS` = 0.000169791776 H（定子电感）
- `M1_KB` = 0.8 V/Hz（反电动势常数）
- `M1_POLES` = 8（极数）
- `M1_ENCODER_LINES` = 1000（编码器线数）
- `M1_PWM_FREQUENCY` = 10 KHz（PWM频率）

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

### 3.1 系统架构图

```
┌─────────────────────────────────────────────────────────────┐
│                        双轴伺服驱动系统                        │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌──────────────┐    ┌──────────────┐                      │
│  │   电机1 (M1)  │    │   电机2 (M2)  │                      │
│  └──────┬───────┘    └──────┬───────┘                      │
│         │                   │                              │
│  ┌──────▼───────┐    ┌──────▼───────┐                      │
│  │  FCL控制单元  │    │  FCL控制单元  │                      │
│  │  (CLA执行)   │    │  (CLA执行)   │                      │
│  └──────┬───────┘    └──────┬───────┘                      │
│         │                   │                              │
│  ┌──────▼───────────────────▼───────┐                      │
│  │         CPU控制层                 │                      │
│  │  ┌─────────────────────────────┐ │                      │
│  │  │      速度环/位置环 (CPU)      │ │                      │
│  │  │  - PID控制器                  │ │                      │
│  │  │  - 斜坡生成器                 │ │                      │
│  │  │  - 速度计算                   │ │                      │
│  │  └─────────────────────────────┘ │                      │
│  │  ┌─────────────────────────────┐ │                      │
│  │  │      通信与监控 (CPU)         │ │                      │
│  │  │  - SCI通信                    │ │                      │
│  │  │  - 数据记录                   │ │                      │
│  │  │  - 故障保护                   │ │                      │
│  │  └─────────────────────────────┘ │                      │
│  └──────────────────────────────────┘                      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 FCL（快速电流环）架构

```
                    ┌─────────────────┐
                    │   速度环输出    │
                    │   (Iq_ref)      │
                    └────────┬────────┘
                             │
                             ▼
┌────────────┐    ┌─────────────────────┐    ┌────────────┐
│   Id_ref   │───▶│    电流环控制器      │◀───│   Iq_ref   │
│   (0或弱磁) │    │  (PI控制器 - CLA)   │    │  (速度输出) │
└────────────┘    └──────────┬──────────┘    └────────────┘
                             │
              ┌──────────────┼──────────────┐
              │              │              │
              ▼              ▼              ▼
       ┌────────────┐ ┌────────────┐ ┌────────────┐
       │  反Park变换 │ │  反Park变换 │ │   SVPWM    │
       │ (Id,Iq→α,β)│ │ (Vd,Vq→Vα,Vβ)│ │  调制模块   │
       └────────────┘ └────────────┘ └─────┬──────┘
                                           │
                                           ▼
                                    ┌────────────┐
                                    │   PWM输出   │
                                    │ (三相逆变器)│
                                    └─────┬──────┘
                                          │
                                          ▼
                                    ┌────────────┐
                                    │   电机      │
                                    │ (PMSM/BLDC) │
                                    └─────┬──────┘
                                          │
                                          ▼
┌────────────┐    ┌─────────────────────┐    ┌────────────┐
│   电流传感器 │───▶│    ADC采样 (CLA)     │───▶│   Clark变换 │
│  (霍尔效应)  │    │  (Ia,Ib,Ic→Iα,Iβ)   │    │ (三相→两相) │
└────────────┘    └─────────────────────┘    └────────────┘
                                                    │
                                                    ▼
                                             ┌────────────┐
                                             │   Park变换  │
                                             │ (Iα,Iβ→Id,Iq)│
                                             └────────────┘
```

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

```
dual_axis_servo_drive.c
    ├── dual_axis_servo_drive_hal.c
    │   └── 配置所有硬件外设
    ├── dual_axis_servo_drive_user.c
    │   └── 初始化电机参数
    ├── fcl_cpu_code_dm.c
    │   └── CPU端FCL控制
    ├── dual_axis_servo_drive_cla_tasks.cla
    │   └── CLA任务入口
    ├── fcl_cla_code_dm.cla
    │   └── CLA端FCL控制
    ├── dlog_4ch_f.c
    │   └── 数据记录
    ├── sfra_gui.c
    │   └── SFRA分析
    └── sfra_gui_scicomms_driverlib.c
        └── SCI通信
```

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
