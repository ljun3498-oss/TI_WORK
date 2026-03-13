#include "motorboard.h"

void MotorBoard_init(void)
{
    EALLOW;

    MotorBoard_PinMux_init();
    MotorBoard_SCI_init();

    EDIS;
}

void MotorBoard_PinMux_init(void)
{
    GPIO_setPinConfig(MOTORBOARD_SCIB_SCIRX_PIN_CONFIG);
    GPIO_setPadConfig(MOTORBOARD_SCIB_SCIRX_GPIO,
                      GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(MOTORBOARD_SCIB_SCIRX_GPIO, GPIO_QUAL_ASYNC);

    GPIO_setPinConfig(MOTORBOARD_SCIB_SCITX_PIN_CONFIG);
    GPIO_setPadConfig(MOTORBOARD_SCIB_SCITX_GPIO,
                      GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
    GPIO_setQualificationMode(MOTORBOARD_SCIB_SCITX_GPIO, GPIO_QUAL_ASYNC);
}

void MotorBoard_SCI_init(void)
{
    MotorBoard_SCIB_init();
}

void MotorBoard_SCIB_init(void)
{
    SCI_clearInterruptStatus(MOTORBOARD_SCIB_BASE,
                             SCI_INT_RXFF | SCI_INT_TXFF | SCI_INT_FE |
                             SCI_INT_OE | SCI_INT_PE | SCI_INT_RXERR |
                             SCI_INT_RXRDY_BRKDT | SCI_INT_TXRDY);
    SCI_clearOverflowStatus(MOTORBOARD_SCIB_BASE);
    SCI_resetTxFIFO(MOTORBOARD_SCIB_BASE);
    SCI_resetRxFIFO(MOTORBOARD_SCIB_BASE);
    SCI_resetChannels(MOTORBOARD_SCIB_BASE);
    SCI_setConfig(MOTORBOARD_SCIB_BASE,
                  DEVICE_LSPCLK_FREQ,
                  MOTORBOARD_SCIB_BAUDRATE,
                  (SCI_CONFIG_WLEN_8 | SCI_CONFIG_STOP_ONE |
                   SCI_CONFIG_PAR_NONE));
    SCI_disableLoopback(MOTORBOARD_SCIB_BASE);
    SCI_performSoftwareReset(MOTORBOARD_SCIB_BASE);
    SCI_setFIFOInterruptLevel(MOTORBOARD_SCIB_BASE, SCI_FIFO_TX0, SCI_FIFO_RX0);
    SCI_enableFIFO(MOTORBOARD_SCIB_BASE);
    SCI_enableModule(MOTORBOARD_SCIB_BASE);
}
