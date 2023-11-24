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

#include <stdio.h>          // ǥ�� �Է�/��� �Լ�
#include "platform.h"       // �÷����� Ưȭ�� ���� �� �ʱ�ȭ
#include "xil_printf.h"      // Xilinx printf �Լ�
#include "xparameters.h"     // �ϵ���� �÷����� �Ű����� ����
#include "xgpio.h"           // �ϵ����� �Ϲ� I/O �Լ�
#include "xintc.h"           // ���ͷ�Ʈ ��Ʈ�ѷ� �Լ�
#include "xil_exception.h"
#include "xuartlite.h" // UART�� ���� �������

//////////////////////// User Define ////////////////////////

#define BTN_ID XPAR_AXI_GPIO_BTN_DEVICE_ID  // ��ư�� GPIO ��Ʈ�ѷ��� ID
#define BTN_CHANNEL 1                        // ��ư�� GPIO ä��
#define BTN_MASK 0b1111                      // ��ư�� ���� ����ũ, ���� 4��Ʈ�� ���

#define UART_ID XPAR_UARTLITE_0_DEVICE_ID

// VEC_ID�� �̸��� �ٲ㵵 ó�� ���̵� �״�� ���´�.
#define BTN_VEC_ID XPAR_INTC_0_GPIO_0_VEC_ID // GPIO BTN�� ���� ���̵�
#define UART_VEC_ID XPAR_INTC_0_UARTLITE_0_VEC_ID // UART�� ���� ���̵�
#define INTC_ID XPAR_INTC_0_DEVICE_ID // Interrupt Controller�� ����̽� ID

////////////////////////////////////////////////////////////////////////////////

XGpio btn_device;                         // ��ư�� XGpio ����̹��� �ν��Ͻ�
XUartLite uart_device;
XIntc intc;                              // ���ͷ�Ʈ ��Ʈ�ѷ��� �ν��Ͻ�

//////////// Function Prototype Declaration ////////////

void BTN_ISR(void *CallBackRef);
void SendHandler(void *CallBackRef, unsigned int EventData); // �۽� �Ϸ���� �� ����� ��
void RecvHandler(void *CallBackRef, unsigned int EventData); // ���� �Ϸ���� �� ����� ��

////////////////////////////////////////////////////////


int main()
{
    init_platform();                    // �÷��� �ʱ�ȭ (�ϵ���� �� ����Ʈ����)

    printf("Start!!\n\r");              // ���α׷� ������ ��Ÿ���� �޽��� ���

    int btn_data = 0;                   // ��ư �����͸� �����ϴ� ����
    XGpio_Config *cfg_ptr_btn_intc;     // ��ư GPIO�� ������ ����Ű�� ������

    //////////////////////// UART �ʱ�ȭ ////////////////////////
    XUartLite_Initialize(&uart_device, XPAR_UARTLITE_0_DEVICE_ID);
    ////////////////////////////////////////////////////////

    cfg_ptr_btn_intc = XGpio_LookupConfig(BTN_ID);  // ��ư GPIO�� ���� ��ȸ
    XGpio_CfgInitialize(&btn_device, cfg_ptr_btn_intc, cfg_ptr_btn_intc->BaseAddress);  // ��ư GPIO �ʱ�ȭ
    XGpio_SetDataDirection(&btn_device, BTN_CHANNEL, BTN_MASK);  // ��ư GPIO�� ������ ���� ����

    //////////////////////// intc �ʱ�ȭ ////////////////////////
    XIntc_Initialize(&intc, INTC_ID);
    XIntc_Connect(&intc, BTN_VEC_ID,
    		(XInterruptHandler)BTN_ISR, (void *)&btn_device);
    		// ���ͷ�Ʈ�� �߻��ϸ� �� ���̵� ���ؼ� VEC_ID�� ���� �Լ��� �ּҸ� ã�Ƽ� �� �Լ��� ����.
    XIntc_Connect(&intc, UART_VEC_ID,
    		(XInterruptHandler)XUartLite_InterruptHandler, (void *)&uart_device);
    		// XUartLite_InterruptHandler : �� �Լ��� �̹� ������� ���� �ִ�.
    		// �� �ȿ� �̹� SendHandler�� RecvHandler�� �ִ�.
    		// ������ �� �����̾�. �׷��� �츮�� �־��ִ� �۾��� �ؾ� ��.

    //----------------------- intc Enable -----------------------//
    XIntc_Enable(&intc, UART_VEC_ID); // UART Interrupt Ȱ��ȭ
    XIntc_Enable(&intc, BTN_VEC_ID); // BTN Interrupt Ȱ��ȭ
    XIntc_Start(&intc, XIN_REAL_MODE); // Interrupt Start

    XGpio_InterruptEnable(&btn_device, BTN_CHANNEL); // �Ժ� ���ͷ�Ʈ Ȱ��ȭ

    XGpio_InterruptGlobalEnable(&btn_device); // Global ���ͷ�Ʈ Ȱ��ȭ

    //-------------------- mblaze ���ͷ�Ʈ �Ҽ�ȭ --------------------//
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
    		(Xil_ExceptionHandler)XIntc_InterruptHandler, &intc);
    Xil_ExceptionEnable();

    // �̰� Send/RecvHandler�� �־��ִ� �۾�
    XUartLite_SetSendHandler(&uart_device, SendHandler, &uart_device);
    XUartLite_SetRecvHandler(&uart_device, RecvHandler, &uart_device);
    XUartLite_EnableInterrupt(&uart_device);
    ////////////////////////////////////////////////////////

    while(1)
    {
//        print("Hello World\n\r");      // �ֿܼ� "Hello World" ���
//        btn_data = XGpio_DiscreteRead(&btn_device, BTN_CHANNEL);  // GPIO���� ��ư ������ �б�
//        xil_printf("btn data : %x \n\r", btn_data);  // ��ư �����͸� 16���� �������� ���
//        MB_Sleep(1000);                 // 1000�и��� ���� ���
    }

    cleanup_platform();                 // ���� ���� ���ҽ� ���� �� ����
    return 0;                           // �������� ������ ��Ÿ���� ���� 0 ��ȯ
}



void BTN_ISR(void *CallBackRef)
{
	printf("btn Interrupt\n\r");
	XGpio *GpioPtr = (XGpio *)CallBackRef;
	// �� CallBackRef�� ���� ���ͷ�Ʈ�� �߻����״��� �˷��ش�.
	// �׷��� �� �ּҸ� �޾Ƽ� Ŭ�������ִ� ���� ����.
//	if(XGpio_DiscreteRead(GpioPtr, BTN_CHANNEL)) // ��ư�� ���� ���� �����ϰ� �ϰ� �ʹٸ�?
	if(XGpio_DiscreteRead(GpioPtr, BTN_CHANNEL) & 0b0010) // ���� ��ư�� ���ͷ�Ʈ�� ����ϰ� �ʹٸ�?
	{
		printf("btn Left Pushed\n\r");
	}
	else printf("btn Left released\n\r");
	XGpio_InterruptClear(GpioPtr, BTN_CHANNEL);
	// ���⼭�� Interrupt�� �߻��ص� Flag�� 0���� �ʱ�ȭ���� �ʴ´�.
	// �� �� ISR�� �����ϸ�, ��� ISR�� �����ع���
	// �׷��� �� �� �����ϰ� ���ִ� �Լ��� �߰������ �Ѵ�.

	return;
}


void SendHandler(void *CallBackRef, unsigned int EventData) // �۽� �Ϸ���� �� ����� ��
{
	return;
}

void RecvHandler(void *CallBackRef, unsigned int EventData) // ���� �Ϸ���� �� ����� ��
{
	u8 rxData;
	XUartLite_Recv(&uart_device, &rxData, 1); // ���� �� ���� ���� ������ ���ϴ� ���
//	XUartLite_Recv(InstancePtr, DataBufferPtr, NumBytes);
	xil_printf("Hello %c\n\r", rxData);
	return;
}














