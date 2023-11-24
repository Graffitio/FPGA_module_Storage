#include "I2C.h"


void I2C_Init()
{
	I2C_DDR |= (1<<I2C_SCL) | (1<<I2C_SDA); // ��� ����
	TWBR = 72; // 100KHz
	// TWBR = 32; // 200KHz
	// TWBR = 12; // 400KHz
}

void I2C_Start()
{
	TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN); // 1�� ������ ����, S/W������ �÷��׸� Clear���ִ� ���̴�.
	                                            // 1 Set�Ͽ� ���ͷ�Ʈ �߻���Ű�� ���� �ƴ�.
	while(!(TWCR & (1<<TWINT))); // �ϵ���������� TWINT ������ ����
	                             // TWI ��� ������ �Ϸ�� ������ ����ϴ� ����
                                 // ��ٷȴٰ� ������ ������ �Ǹ� while���� ����������.
                                 // ��, TWCR���� TWINT bit�� 1�� �Ǹ�, while ���� ������ ������ �ǰ� ���������� �ȴ�.
}

void I2C_Stop()
{
	TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTO); // Stop ��Ʈ ����
}

void I2C_TxData(uint8_t data) // data 1����Ʈ ����
{
	TWDR = data; // TWDR Register�� data �� ����
	TWCR = (1<<TWINT) | (1<<TWEN); // �÷��� ����� En = 1�� �ٲ㼭 ������ ���� �Ϸ���� �˸�
	while (!(TWCR & (1<<TWINT))); // ���� �Ϸ� ���
}

void I2C_TxByte(uint8_t devAddrRW, uint8_t data)
{
	I2C_Start();
	I2C_TxData(devAddrRW); // ���� ���̳� �� ���̳� ����
	I2C_TxData(data); // ��/����� ������ ����
	I2C_Stop();
}
