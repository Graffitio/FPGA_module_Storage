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

#define LED_ID          XPAR_AXI_GPIO_LED_DEVICE_ID
#define SWITCH_ID       XPAR_AXI_GPIO_SWITCH_DEVICE_ID
#define LED_CHANNEL     1
#define SWITCH_CHANNEL  1


int main()
{
    init_platform();

    print("Start!\n\r");

    XGpio_Config *cfg_ptr_led; // XGpio_Config 구조체의 주소
    XGpio_Config *cfg_ptr_switch; // XGpio_Config 구조체의 주소
    XGpio led_device; // gpio 객체
    XGpio switch_device; // gpio 객체
    u32 led_data = 0;
//    u32 switch_data = 0;

    // Initialize Led Device
    cfg_ptr_led = XGpio_LookupConfig(LED_ID);
    cfg_ptr_switch = XGpio_LookupConfig(SWITCH_ID);
    XGpio_CfgInitialize(&led_device, cfg_ptr_led, cfg_ptr_led->BaseAddress);
    XGpio_CfgInitialize(&switch_device, cfg_ptr_switch, cfg_ptr_switch->BaseAddress);
    // XGpio_CfgInitialize(InstancePtr, Config, EffectiveAddr)
    XGpio_SetDataDirection(&led_device, LED_CHANNEL, 0); // 0을 줘서 출력 설정
    XGpio_SetDataDirection(&switch_device, SWITCH_CHANNEL, 1); // 1을 줘서 입력 설정
    // XGpio_SetDataDirection(InstancePtr, Channel, DirectionMask)

    while(1)
    {
    	print("Hello World\n\r");
    	led_data = XGpio_DiscreteRead(&switch_device, SWITCH_CHANNEL);
    	XGpio_DiscreteWrite(&led_device, LED_CHANNEL, led_data);
    	// XGpio_DiscreteWrite(InstancePtr, Channel, Mask)
    	MB_Sleep(1000);
    }


    cleanup_platform();
    return 0;
}
