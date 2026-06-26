# led_project_cpu2 修改记录

## 2026-06-16 IPC链接脚本告警清理

### 本次最终状态

- `led_project_cpu2` 当前编译已无 warning / error。
- 本次修改集中在 CPU2 链接脚本的 IPC message RAM 段映射。

### 链接脚本修复

构建时曾出现：

```text
#10247-D: creating output section "MSGRAM_CPU1_TO_CPU2" without a SECTIONS specification
#10247-D: creating output section "MSGRAM_CPU2_TO_CPU1" without a SECTIONS specification
```

原因与 CPU1 工程相同：driverlib `ipc.c` 生成 `MSGRAM_CPU1_TO_CPU2` 和 `MSGRAM_CPU2_TO_CPU1` 输出段，但 CPU2 `.cmd` 文件没有显式 `SECTIONS` 映射。

已在以下文件中补充：

- `2837xD_RAM_lnk_cpu2.cmd`
- `2837xD_FLASH_lnk_cpu2.cmd`

新增段：

```cmd
MSGRAM_CPU1_TO_CPU2 : > CPU1TOCPU2RAM, PAGE = 1, TYPE = NOINIT
MSGRAM_CPU2_TO_CPU1 : > CPU2TOCPU1RAM, PAGE = 1, TYPE = NOINIT
```

### 维护注意

- CPU2虽然是远端核，也会链接 driverlib IPC 缓冲区，因此同样需要 `MSGRAM_*` 段映射。
- 如果后续复制新的 CPU2 工程，优先检查 RAM/FLASH 两套 `.cmd`，避免只修 Debug/RAM 而遗漏 Flash 配置。
