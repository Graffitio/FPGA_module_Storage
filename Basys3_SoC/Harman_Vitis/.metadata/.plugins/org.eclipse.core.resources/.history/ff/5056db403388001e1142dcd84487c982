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

#define PWM_0_ADDR	0x44A00000
#define PWM_1_ADDR	0x44A10000


int main()
{
    init_platform();
    printf("Start!!");
    volatile unsigned int *pwm_0 = (volatile unsigned int *) PWM_0_ADDR; // 32bit니까 usigned int면 충분하다.
    volatile unsigned int *pwm_1 = (volatile unsigned int *) PWM_1_ADDR; // 32bit니까 usigned int면 충분하다.
    print("debug00\n\r");
    while(1)
    {
    print("Hello World\n\r");
    // 배열로 접근할 수 있다.
    pwm_0[0] = 30; // Duty cycle
    pwm_0[1] = 10000; // Freq,  LED 밝기 제어는 10000Hz정도 주면 된다.
    print("debug01\n\r");
    pwm_1[0] = 90; // 배열로 접근할 수 있다.
    pwm_1[1] = 10000; // Freq,  LED 밝기 제어는 10000Hz정도 주면 된다.
    MB_Sleep(1000);
    }
    cleanup_platform();
    return 0;
}
