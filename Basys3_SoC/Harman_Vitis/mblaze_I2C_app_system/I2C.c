#include "I2C.h"


void I2C_Init()
{
	I2C_DDR |= (1<<I2C_SCL) | (1<<I2C_SDA); // 출력 설정
	TWBR = 72; // 100KHz
	// TWBR = 32; // 200KHz
	// TWBR = 12; // 400KHz
}

void I2C_Start()
{
	TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN); // 1을 보내는 것은, S/W적으로 플래그를 Clear해주는 것이다.
	                                            // 1 Set하여 인터럽트 발생시키는 것이 아님.
	while(!(TWCR & (1<<TWINT))); // 하드웨어적으로 TWINT 시점을 결정
	                             // TWI 통신 동작이 완료될 때까지 대기하는 역할
                                 // 기다렸다가 조건이 거짓이 되면 while문을 빠져나간다.
                                 // 즉, TWCR에서 TWINT bit가 1이 되면, while 문의 조건이 거짓이 되고 빠져나가게 된다.
}

void I2C_Stop()
{
	TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTO); // Stop 비트 설정
}

void I2C_TxData(uint8_t data) // data 1바이트 전송
{
	TWDR = data; // TWDR Register에 data 값 저장
	TWCR = (1<<TWINT) | (1<<TWEN); // 플래그 세우고 En = 1로 바꿔서 데이터 전송 완료됨을 알림
	while (!(TWCR & (1<<TWINT))); // 전송 완료 대기
}

void I2C_TxByte(uint8_t devAddrRW, uint8_t data)
{
	I2C_Start();
	I2C_TxData(devAddrRW); // 읽을 것이냐 쓸 것이냐 결정
	I2C_TxData(data); // 입/출력할 데이터 보냄
	I2C_Stop();
}
