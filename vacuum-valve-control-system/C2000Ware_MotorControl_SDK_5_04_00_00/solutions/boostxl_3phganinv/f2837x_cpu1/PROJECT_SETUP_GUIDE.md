# 项目设置指南 - 运动控制库集成

## 📋 概述

本文档说明如何正确设置包含运动控制库的双轴伺服控制项目。

**版本：** v2.1  
**日期：** 2025-12-28  
**修改内容：** 自动包含运动控制库文件

---

## ✅ `.projectspec` 文件修改

### 修改内容

在 `dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1.projectspec` 中添加了：

```xml
<!-- Motion Control Library files (for FCL_LEVEL7 and above) -->
<file action="copy" path="SDK_ROOT/solutions/boostxl_3phganinv/f2837x_cpu1/include/motion_control.h" targetDirectory="headers" />

<file action="copy" path="SDK_ROOT/solutions/boostxl_3phganinv/f2837x_cpu1/source/dual_axis_servo_ctrl_hal_cpu1.c" targetDirectory="sources" />
<file action="copy" path="SDK_ROOT/solutions/boostxl_3phganinv/f2837x_cpu1/source/motion_control.c" targetDirectory="sources" />
```

### 添加的文件

| 文件 | 源路径 | 目标目录 | 说明 |
|------|--------|----------|------|
| `motion_control.h` | `f2837x_cpu1/include/` | `headers/` | 运动控制库头文件 |
| `motion_control.c` | `f2837x_cpu1/source/` | `sources/` | 运动控制库实现 |

---

## 🚀 项目导入步骤

### 方法1：从 `.projectspec` 导入（推荐）

1. **打开 CCS**
   - 启动 Code Composer Studio

2. **导入项目**
   - 菜单：**File → Import...**
   - 选择：**C2000 → C2000 Project**
   - 点击 **Next**

3. **选择 `.projectspec` 文件**
   - 点击 **Browse...**
   - 导航到：
     ```
     C:\ti\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\boostxl_3phganinv\f2837x_cpu1\ccs\sensored_foc\dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1.projectspec
     ```
   - 选择文件，点击 **Open**

4. **配置项目**
   - Project Name: `dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1`
   - 选择配置：`F2837x_RAM` 或 `F2837x_FLASH`
   - 点击 **Finish**

5. **验证文件导入**
   - 在 **Project Explorer** 中检查：
     ```
     dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1/
     ├── headers/
     │   ├── motion_control.h          ✓ 新增
     │   ├── dual_axis_servo_ctrl_hal_cpu1.h
     │   └── ...
     └── sources/
         ├── motion_control.c          ✓ 新增
         ├── dual_axis_servo_ctrl_main_cpu1.c
         └── ...
     ```

6. **编译项目**
   - 右键点击项目
   - 选择 **Build Project**
   - 期望：编译成功 ✅

---

## 🔧 手动添加文件（如果需要）

如果项目已经导入但缺少运动控制文件，可以手动添加：

### 添加 `motion_control.h`

1. 右键点击 `headers` 文件夹
2. 选择 **Add Files...**
3. 导航到：
   ```
   C:\ti\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\boostxl_3phganinv\f2837x_cpu1\include\motion_control.h
   ```
4. 选择 **Copy files**
5. 点击 **OK**

### 添加 `motion_control.c`

1. 右键点击 `sources` 文件夹
2. 选择 **Add Files...**
3. 导航到：
   ```
   C:\ti\c2000\C2000Ware_MotorControl_SDK_5_04_00_00\solutions\boostxl_3phganinv\f2837x_cpu1\source\motion_control.c
   ```
4. 选择 **Copy files**
5. 点击 **OK**

---

## 📊 项目文件结构

### 完整的项目结构

```
dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1/
├── headers/
│   ├── motion_control.h                          ← 运动控制库
│   ├── dual_axis_servo_ctrl_hal_cpu1.h
│   ├── dual_axis_servo_drive_settings.h
│   ├── dual_axis_servo_drive_user.h
│   ├── dual_axis_servo_drive_ipc.h
│   └── sfra_settings.h
│
├── sources/
│   ├── motion_control.c                          ← 运动控制库
│   ├── dual_axis_servo_ctrl_main_cpu1.c         ← 主程序（含1ms定时中断）
│   ├── dual_axis_servo_ctrl_cpu1.c
│   ├── dual_axis_servo_ctrl_hal_cpu1.c
│   ├── dual_axis_servo_ctrl_user_cpu1.c
│   ├── sfra_gui.c
│   ├── sfra_gui_scicomms_driverlib.c
│   └── dlog_4ch_f.c
│
├── src_device/
│   ├── device.c
│   ├── F2837xD_GlobalVariableDefs.c
│   ├── F2837xD_CodeStartBranch.asm
│   └── dual_axis_f2837x_ram_lnk_cpu1.cmd
│
└── src_driver/
    ├── cputimer.c
    ├── gpio.c
    ├── interrupt.c
    ├── ipc.c
    └── ...
```

---

## ✅ 编译验证

### 编译命令

在 CCS 中：
1. 右键点击项目
2. 选择 **Clean Project**
3. 选择 **Build Project**

或使用命令行：
```bash
cd workspace/dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1
gmake clean
gmake all
```

### 期望输出

```
Building file: "../sources/motion_control.c"
Invoking: C2000 Compiler
...
Finished building: "../sources/motion_control.c"

Building file: "../sources/dual_axis_servo_ctrl_main_cpu1.c"
...
Finished building: "../sources/dual_axis_servo_ctrl_main_cpu1.c"

Building target: "dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1.out"
Invoking: C2000 Linker
...
Finished building target: "dual_axis_servo_ctrl_fcl_qep_f2837x_cpu1.out"

**** Build Finished ****
```

### 验证符号

编译成功后，所有运动控制函数应该被正确链接：

| 符号 | 状态 |
|------|------|
| `MotionAxis_init` | ✅ Linked |
| `MotionAxis_addMotor` | ✅ Linked |
| `MotionAxis_setMotionParams` | ✅ Linked |
| `MotionAxis_setPIDGains` | ✅ Linked |
| `MotionAxis_setFollowingErrorLimit` | ✅ Linked |
| `MotionAxis_updateControl` | ✅ Linked |
| `MotionAxis_updateProfile` | ✅ Linked |

---

## 🎯 BuildLevel 配置

### 选择运动控制级别

在 `dual_axis_servo_drive_settings.h` 中设置：

```c
// FCL_LEVEL7: 独立双轴运动控制
#define BUILDLEVEL  FCL_LEVEL7

// 或

// FCL_LEVEL8: 龙门同步运动控制
#define BUILDLEVEL  FCL_LEVEL8
```

### BuildLevel 功能对照

| BuildLevel | 功能 | 运动控制库 |
|------------|------|------------|
| FCL_LEVEL1-6 | 基础FOC控制 | 不需要 |
| **FCL_LEVEL7** | **独立双轴运动控制** | ✅ 需要 |
| **FCL_LEVEL8** | **龙门同步运动控制** | ✅ 需要 |

---

## 🐛 故障排查

### 问题1：编译错误 - 找不到 `motion_control.h`

**错误信息：**
```
fatal error #1965: cannot open source file "motion_control.h"
```

**解决方法：**
1. 检查 `headers/` 文件夹中是否有 `motion_control.h`
2. 如果没有，手动添加文件（参考上面步骤）
3. 或重新从 `.projectspec` 导入项目

### 问题2：链接错误 - 未定义的符号

**错误信息：**
```
undefined symbol: MotionAxis_init
undefined symbol: MotionAxis_updateControl
...
```

**解决方法：**
1. 检查 `sources/` 文件夹中是否有 `motion_control.c`
2. 确保 `motion_control.c` 没有被排除在编译之外
   - 右键点击 `motion_control.c`
   - 选择 **Resource Configurations → Exclude from Build...**
   - 确保所有配置都**未勾选**
3. 重新编译项目

### 问题3：文件存在但编译时找不到

**解决方法：**
1. 刷新项目：
   - 右键点击项目
   - 选择 **Refresh**
2. 清理并重新编译：
   - **Project → Clean...**
   - 选择项目
   - 勾选 **Start a build immediately**
   - 点击 **OK**

---

## 📚 相关文档

1. **TIMER_ISR_IMPLEMENTATION.md** - 1ms定时中断实现说明
2. **MOTION_TIMING_CONFIGURATION.md** - 时序配置指南
3. **MOTION_CONTROL_README.md** - 运动控制库用户手册
4. **BUILDLEVEL_MOTION_CONTROL_GUIDE.md** - BuildLevel配置指南

---

## 🎉 总结

### 修改内容

✅ 在 `.projectspec` 中添加了：
- `motion_control.h` → `headers/`
- `motion_control.c` → `sources/`

### 使用方法

1. **新项目：** 从修改后的 `.projectspec` 导入
2. **现有项目：** 手动添加这两个文件
3. **编译：** Clean + Build
4. **验证：** 检查链接成功

### 优势

- ✅ 自动包含运动控制库
- ✅ 无需手动添加文件
- ✅ 支持 FCL_LEVEL7 和 FCL_LEVEL8
- ✅ 一次配置，永久有效

---

**项目配置完成！现在可以正常编译和使用运动控制功能了！** 🚀

**版权所有 © 2025 Texas Instruments Incorporated**

**文档结束**


