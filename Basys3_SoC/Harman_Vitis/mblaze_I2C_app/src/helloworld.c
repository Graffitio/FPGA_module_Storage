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




//#include <stdio.h>
//#include "platform.h"
//#include "xil_printf.h"
//#include "xparameters.h"
//#include "xiic.h"
//
//#define IIC_ID XPAR_AXI_IIC_0_DEVICE_ID
//
//XIic iic_device; // IIC ��ü �ν��Ͻ� ����
//
//void lcd_init();
//void lcd_send_cmd(char cmd);
//void lcd_send_data(char data);
//void lcd_send_string(char *str);
//void lcd_put_cur(int row, int col);
//void lcd_clear();
//
//
//int main()
//{
//    init_platform();
//    char buf[30];
//
//    //--------------- Initialization ---------------//
//    XIic_Initialize(&iic_device, IIC_ID); // ��ü�ּ�, Device_ID
////    XIic_Initialize(InstancePtr, DeviceId)
//    u32 count=0;
//    lcd_init();
//
//    while(1){
//       lcd_put_cur(0,0);
//       lcd_send_string("Hello!");
//       lcd_put_cur(1,0);
//       sprintf(buf,"Count %-5d",count++);
//       lcd_send_string(buf);
//       MB_Sleep(400);
//    }
//    cleanup_platform();
//    return 0;
//}
//
//
//
//void lcd_init()
//{
//   MB_Sleep(50);
//   lcd_send_cmd(0x30);
//   MB_Sleep(5);
//   lcd_send_cmd(0x30);
//   MB_Sleep(1);
//   lcd_send_cmd(0x30);
//   MB_Sleep(10);
//   lcd_send_cmd(0x20);
//   MB_Sleep(10);
//
//   lcd_send_cmd(0x28);
//   MB_Sleep(1);
//   lcd_send_cmd(0x08);
//   MB_Sleep(1);
//   lcd_send_cmd(0x01);
//   MB_Sleep(1);
//   lcd_send_cmd(0x06);
//   MB_Sleep(1);
//   lcd_send_cmd(0x0c);
//}
//
//void lcd_send_cmd(char cmd)
//{
//   char data_u,data_l;
//   uint8_t data_t[4];
//   data_u = (cmd & 0xf0);
//   data_l = ((cmd << 4) & 0xf0);
//   data_t[0] = data_u | 0x0c;
//   data_t[1] = data_u | 0x08;
//   data_t[2] = data_l | 0x0c;
//   data_t[3] = data_l | 0x08;
//   XIic_Send(iic_device.BaseAddress, 0x27, data_t, 4, XIic_Stop);
//}
//
//void lcd_send_data(char data)
//{
//   char data_u,data_l;
//   uint8_t data_t[4];
//   data_u = (data & 0xf0);
//   data_l = ((data << 4) & 0xf0);
//   data_t[0] = data_u | 0x0d;
//   data_t[1] = data_u | 0x09;
//   data_t[2] = data_l | 0x0d;
//   data_t[3] = data_l | 0x09;
//   XIic_Send(iic_device.BaseAddress, 0x27, data_t, 4, XIic_Stop);
//}
//
//void lcd_send_string(char *str)
//{
//   while(*str) lcd_send_data(*str++);
//}
//
//void lcd_put_cur(int row, int col)
//{
//   switch(row)
//   {
//   case 0:
//      col |= 0x80;
//      break;
//   case 1:
//      col |= 0xc0;
//      break;
//   }
//   lcd_send_cmd (col);
//}
//
//void lcd_clear()
//{
//   lcd_send_cmd(0x80);
//   for(int i=0;i<70;i++)
//   {
//      lcd_send_data(' ');
//   }
//}







///////////////////////////////////////////////////////////////////////////////////////////
// ������ �ڵ� //

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiic.h"

#define IIC_ID XPAR_AXI_IIC_0_DEVICE_ID

#define COMMAND 0
#define DATA 1
#define BACKLIGHT 3
#define ENABLE 2
#define RW 1
#define RS 0
#define DATA 1

XIic iic_device; // IIC ��ü �ν��Ͻ� ����

void Iic_LCD_write_byte(u8 tx_data, u8 rs)
{
	u8 data_t[4] = {0,}; // �ɿ��� : D7 D6 D5 D4 BL EN RW RS
	 // ���� 4bit 0���� �� �� ������ 1�� �� �� ������,
	 // ���� 4bit 0���� �� �� ������ 1�� �� �� ������,
	data_t[0] = ((tx_data & 0xf0) | rs << RS | (1 << BACKLIGHT) | (1 << ENABLE));  // ù ���� ���� ������
	// data & 0xf0 : ���� 4bit
	// ������ ���� rs = 0, data�� ���� rs = 1
	// BACKLIGHT�� 3�� bit�̹Ƿ� 3�� ����Ʈ
	// BACKLIGHT�� �� ���̸� 1, �� ���̸� 0 �ָ� �ȴ�.
	data_t[1] = ((tx_data & 0xf0) | rs << RS | (1 << BACKLIGHT) |  (1 << RW));  // �� ���� ���� ������
//	MB_Sleep(5); // 4.1ms Delay
	data_t[2] = ((tx_data << 4 & 0xf0) | rs << RS | (1 << BACKLIGHT) | (1 << ENABLE));  // ù ���� ���� ������
	data_t[3] = ((tx_data << 4 & 0xf0) | rs << RS | (1 << BACKLIGHT));  // ù ���� ���� ������
	XIic_Send(iic_device.BaseAddress, 0x27, data_t, 4, XIIC_STOP); // 4�� ���� �Ŵϱ� 4
	return;
}

void Iic_LCD_init()
{
	MB_Sleep(15);
	Iic_LCD_write_byte(0x33, COMMAND);
	Iic_LCD_write_byte(0x32, COMMAND);
	Iic_LCD_write_byte(0x28, COMMAND);
	Iic_LCD_write_byte(0x0C, COMMAND);
	Iic_LCD_write_byte(0x06, COMMAND);
	Iic_LCD_write_byte(0x01, COMMAND); // Display Clear
	MB_Sleep(10);
	return;
}

void Iic_gotoXY(u8 row, u8 col)
{
//	col %= 16;
	col %= 32; // ������ 32���� �����ϱ� �̷��� ������.
	row %= 2;
//	u8 address = (0x40 * row) + col;
//	u8 command = 0x80 + address;
//	Iic_LCD_write_byte(command, COMMAND);
	u8 address = 0x80 | (row<<6) | col; // 6�� �ε����ϱ� 6�� �и� �ȴ�.
	Iic_LCD_write_byte(address, COMMAND);
}

void Iic_writestring(char *string)
{
	for(u8 i = 0 ; string[i] ; i++)
	{
		Iic_LCD_write_byte(string[i], DATA);
	}
}


int main()
{
    init_platform();
    char buf[30];
    u8 count = 0;

    //--------------- Initialization ---------------//
    XIic_Initialize(&iic_device, IIC_ID); // ��ü�ּ�, Device_ID
//    XIic_Initialize(InstancePtr, DeviceId)
//    u32 count=0;
    Iic_LCD_init();
	Iic_gotoXY(0,0);
	Iic_writestring("0123456789ABCDEFGHIJ");
	Iic_gotoXY(1,0);
	Iic_writestring("abcdefghijk123456789");
	char left_right_flag = 1;
    while(1){
//    	Iic_LCD_write_byte(0x80, COMMAND); // 0x80 : ù ��° ��, 0xC0 : �� ��° ��
//    	Iic_LCD_write_byte('a', data);
//    	for (int i = 0 ; i < 16 ; i++)
//    	{
//    		Iic_LCD_write_byte('a' + i, DATA);
//    	}
//
//    	Iic_gotoXY(1,7); // �� ���� �ٷ� Ŀ�� �ű�
//    	for (int i = 0 ; i < 16 ; i++)
//    	{
//    		Iic_LCD_write_byte('m' + i, DATA);
//    	}
//    	Iic_LCD_write_byte(0x18, COMMAND); // �� ĭ�� �½���Ʈ�ϴ� ���ɾ� 0x18
//    	count++;
//    	if(count > 15)
//    	{
//    		count = 0;
//    		Iic_LCD_write_byte(0x02, COMMAND); // Return Home ���ɾ�
//    		MB_Sleep(2); // ���� Ȩ �ϱ� ���� ������
//    	}
    	count++;
    	if(count > 15)
    	{
    		count = 0;
    		left_right_flag ^= 1;
    	}
    	if(left_right_flag)Iic_LCD_write_byte(0x18, COMMAND);
    	else Iic_LCD_write_byte(0x1c, COMMAND);

       MB_Sleep(300);
    }
    cleanup_platform();
    return 0;
}