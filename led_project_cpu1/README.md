# led_project_cpu1 修改记录

## 2026-06-16 IPC链接脚本与告警清理

### 本次最终状态

- `led_project_cpu1` 当前编译已无 warning / error。
- 本次修改集中在 IPC message RAM 段映射和无用变量清理。

### 链接脚本修复

构建时曾出现：

```text
#10247-D: creating output section "MSGRAM_CPU1_TO_CPU2" without a SECTIONS specification
#10247-D: creating output section "MSGRAM_CPU2_TO_CPU1" without a SECTIONS specification
```

原因是 driverlib 的 `ipc.c` 使用了：

```c
#pragma DATA_SECTION(IPC_CPU1_To_CPU2_PutBuffer, "MSGRAM_CPU1_TO_CPU2")
#pragma DATA_SECTION(IPC_CPU1_To_CPU2_GetBuffer, "MSGRAM_CPU2_TO_CPU1")
```

但 CPU1 链接脚本只配置了旧式 `PUTBUFFER/GETBUFFER` 段，没有显式映射 driverlib 新段名。

已在以下文件中补充：

- `2837xD_RAM_lnk_cpu1.cmd`
- `2837xD_FLASH_lnk_cpu1.cmd`

新增段：

```cmd
MSGRAM_CPU1_TO_CPU2 : > CPU1TOCPU2RAM, PAGE = 1, TYPE = NOINIT
MSGRAM_CPU2_TO_CPU1 : > CPU2TOCPU1RAM, PAGE = 1, TYPE = NOINIT
```

### C源码告警清理

- 删除 `empty_driverlib_main_cpu1.c` 中只赋值未读取的 `gpio1_released`。
- 删除未使用的 `delayCount1`。

### 维护注意

- 只要链接 driverlib IPC，就需要在 `.cmd` 中同时兼容旧段名和 `MSGRAM_CPU1_TO_CPU2/MSGRAM_CPU2_TO_CPU1`。
- CPU1/CPU2 成对工程建议两个链接脚本都保持 message RAM 段定义一致，避免切换构建配置后同类 warning 再出现。
