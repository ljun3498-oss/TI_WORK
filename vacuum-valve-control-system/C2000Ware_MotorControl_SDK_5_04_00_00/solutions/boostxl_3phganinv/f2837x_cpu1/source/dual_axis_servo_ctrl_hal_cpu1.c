//#############################################################################
// $Copyright:
// Copyright (C) 2017-2025 Texas Instruments Incorporated - http://www.ti.com/
//#############################################################################

//
// FILE:    dual_axis_servo_ctrl_hal_cpu1.c
// TITLE:   HAL implementation for CPU1
//

#include "dual_axis_servo_ctrl_hal_cpu1.h"
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

// External IPC data pointers
extern IPC_DataFromCPU1_t *ipcDataFromCPU1;
extern IPC_DataToCPU1_t   *ipcDataToCPU1;

//
// HAL_CPU1_init()
//
HAL_CPU1_Handle HAL_CPU1_init(void *pMemory, const size_t numBytes)
{
    HAL_CPU1_Handle handle;
    HAL_CPU1_Obj *obj;

    if(numBytes < sizeof(HAL_CPU1_Obj))
    {
        return((HAL_CPU1_Handle)NULL);
    }

    handle = (HAL_CPU1_Handle)pMemory;
    obj = (HAL_CPU1_Obj *)handle;

    // Disable watchdog
    SysCtl_disableWatchdog();

    // Initialize timer handles
    obj->timerHandle[0] = CPUTIMER0_BASE;
    obj->timerHandle[1] = CPUTIMER1_BASE;
    obj->timerHandle[2] = CPUTIMER2_BASE;

    // Initialize SCI handle
    obj->sciHandle[0] = SCIA_BASE;
    obj->sciHandle[1] = SCIB_BASE;

    // Initialize DAC handle
    obj->dacHandle[0] = DACA_BASE;
    obj->dacHandle[1] = DACB_BASE;
    obj->dacHandle[2] = DACC_BASE;

    return(handle);
}

//
// HAL_setupGPIOs()
//
void HAL_setupGPIOs(HAL_CPU1_Handle handle)
{
    // Setup LED1 (GPIO31)
    GPIO_setPinConfig(GPIO_31_GPIO31);
    GPIO_setDirectionMode(31, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(31, GPIO_PIN_TYPE_STD);
    GPIO_writePin(31, 1);

    // Setup LED2 (GPIO34)
    GPIO_setPinConfig(GPIO_34_GPIO34);
    GPIO_setDirectionMode(34, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(34, GPIO_PIN_TYPE_STD);
    GPIO_writePin(34, 1);

    return;
}

//
// HAL_setupCpuTimer()
//
void HAL_setupCpuTimer(uint32_t base, uint32_t periodCount)
{
    // Initialize timer
    CPUTimer_stopTimer(base);
    CPUTimer_setPeriod(base, periodCount);
    CPUTimer_setPreScaler(base, 0);
    CPUTimer_reloadTimerCounter(base);
    CPUTimer_startTimer(base);

    return;
}

//
// HAL_setupSCI()
//
void HAL_setupSCI(HAL_CPU1_Handle handle)
{
    HAL_CPU1_Obj *obj = (HAL_CPU1_Obj *)handle;

    // Setup SCIA for SFRA communication
    
    // GPIO43 - SCIRXDA
    GPIO_setPinConfig(GPIO_43_SCIRXDA);
    GPIO_setDirectionMode(43, GPIO_DIR_MODE_IN);
    GPIO_setPadConfig(43, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(43, GPIO_QUAL_ASYNC);

    // GPIO42 - SCITXDA
    GPIO_setPinConfig(GPIO_42_SCITXDA);
    GPIO_setDirectionMode(42, GPIO_DIR_MODE_OUT);
    GPIO_setPadConfig(42, GPIO_PIN_TYPE_STD);
    GPIO_setQualificationMode(42, GPIO_QUAL_ASYNC);

    // Initialize SCIA
    SCI_disableModule(obj->sciHandle[0]);
    SCI_setConfig(obj->sciHandle[0], DEVICE_LSPCLK_FREQ, 57600,
                  (SCI_CONFIG_WLEN_8 |
                   SCI_CONFIG_STOP_ONE |
                   SCI_CONFIG_PAR_NONE));
    SCI_resetChannels(obj->sciHandle[0]);
    SCI_resetRxFIFO(obj->sciHandle[0]);
    SCI_resetTxFIFO(obj->sciHandle[0]);
    SCI_clearInterruptStatus(obj->sciHandle[0], SCI_INT_TXFF | SCI_INT_RXFF);
    SCI_enableFIFO(obj->sciHandle[0]);
    SCI_enableModule(obj->sciHandle[0]);
    SCI_performSoftwareReset(obj->sciHandle[0]);

    return;
}

//
// HAL_setupDACs()
//
void HAL_setupDACs(HAL_CPU1_Handle handle)
{
    HAL_CPU1_Obj *obj = (HAL_CPU1_Obj *)handle;

    // Setup DAC-A
    DAC_setReferenceVoltage(obj->dacHandle[0], DAC_REF_VDAC);
    DAC_enableOutput(obj->dacHandle[0]);
    DAC_setShadowValue(obj->dacHandle[0], 2048);
    
    DEVICE_DELAY_US(10);

    // Setup DAC-B
    DAC_setReferenceVoltage(obj->dacHandle[1], DAC_REF_VDAC);
    DAC_enableOutput(obj->dacHandle[1]);
    DAC_setShadowValue(obj->dacHandle[1], 2048);
    
    DEVICE_DELAY_US(10);

    // Setup DAC-C
    DAC_setReferenceVoltage(obj->dacHandle[2], DAC_REF_VDAC);
    DAC_enableOutput(obj->dacHandle[2]);
    DAC_setShadowValue(obj->dacHandle[2], 2048);

    return;
}

//
// HAL_setupIPC_CPU1()
//
void HAL_setupIPC_CPU1(void)
{
    // Setup shared memory pointers
    ipcDataFromCPU1 = (IPC_DataFromCPU1_t *)IPC_DATA_FROM_CPU1_ADDR;
    ipcDataToCPU1 = (IPC_DataToCPU1_t *)IPC_DATA_TO_CPU1_ADDR;
    
    // Initialize IPC data from CPU1 with defaults
    *ipcDataFromCPU1 = (IPC_DataFromCPU1_t)IPC_DATA_FROM_CPU1_DEFAULTS;
    
    // Configure memory for sharing with CPU2
    // Make GS0 RAM accessible by both CPUs
    MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS0, MEMCFG_GSRAMMASTER_CPU1);
    MemCfg_setGSRAMMasterSel(MEMCFG_SECT_GS0, MEMCFG_GSRAMMASTER_CPU2);
    
    return;
}

//
// HAL_bootCPU2()
//
void HAL_bootCPU2(void)
{
#ifdef _FLASH
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_FLASH);
#else
    Device_bootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_RAM);
#endif

    return;
}

//
// End of File
//
