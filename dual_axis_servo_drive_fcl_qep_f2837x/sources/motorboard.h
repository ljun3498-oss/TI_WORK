#ifndef MOTORBOARD_H
#define MOTORBOARD_H

#include "driverlib.h"
#include "device.h"

#define MOTORBOARD_SCIB_BASE             SCIB_BASE
#define MOTORBOARD_SCIB_BAUDRATE         115200U
#define MOTORBOARD_SCIB_SCIRX_GPIO       55U
#define MOTORBOARD_SCIB_SCITX_GPIO       54U
#define MOTORBOARD_SCIB_SCIRX_PIN_CONFIG GPIO_55_SCIRXDB
#define MOTORBOARD_SCIB_SCITX_PIN_CONFIG GPIO_54_SCITXDB

void MotorBoard_init(void);
void MotorBoard_PinMux_init(void);
void MotorBoard_SCI_init(void);
void MotorBoard_SCIB_init(void);

#endif
