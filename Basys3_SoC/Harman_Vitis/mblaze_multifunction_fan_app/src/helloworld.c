/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"

#define SWITCH_ID		XPAR_AXI_GPIO_SWITCH_DEVICE_ID
#define SWITCH_CHANNEL	1
#define SWITCH_MASK		0b1111111111111111 // ��/��� �����ϴ� MASK, ���⼭�� 1111�� �༭ ���� �Է����� ����


int main()
{
    init_platform();

    print("Start!\n\r");

    XGpio_Config *cfg_ptr_switch;
    XGpio switch_device;

    /////// SWITCH ///////
    cfg_ptr_switch = XGpio_LookupConfig(SWITCH_ID);
    XGpio_CfgInitialize(&switch_device, cfg_ptr_switch, cfg_ptr_switch->BaseAddress);
    XGpio_SetDataDirection(&switch_device, SWITCH_CHANNEL, SWITCH_MASK); // 1�� �༭ �Է� ����

    u8 switch_data = 0;
    volatile unsigned int *Fan_ctrl_reg = (volatile unsigned int *) 0x44A00000;


    while(1)
    {
    	print("Hello World\n\r");
    	switch_data = XGpio_DiscreteRead(&switch_device, SWITCH_CHANNEL);
    	MB_Sleep(100);
    }

    cleanup_platform();
    return 0;
}