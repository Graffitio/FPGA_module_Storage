#include "FND.h"

//////////////////////////////////////////// Init Variable //////////////////////////////////////////

unsigned int FND_FONT[] = {
		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_D | 1<<FND_E | 1<<FND_F | 0<<FND_G | 0<<FND_P,  // 0
		1<<FND_B | 1<<FND_C, 																	// 1
		1<<FND_A | 1<<FND_B | 1<<FND_D | 1<<FND_E | 1<<FND_G,									// 2
		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_D | 1<<FND_G, 									// 3
		1<<FND_B | 1<<FND_C | 1<<FND_F | 1<<FND_G, 												// 4
		1<<FND_A | 1<<FND_C | 1<<FND_D | 1<<FND_F | 1<<FND_G, 									// 5
		1<<FND_A | 1<<FND_C | 1<<FND_D | 1<<FND_E | 1<<FND_F | 1<<FND_G, 						// 6
		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_F, 												// 7
		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_D | 1<<FND_E | 1<<FND_F | 1<<FND_G, 			// 8
		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_D | 1<<FND_F | 1<<FND_G, 						// 9

		1<<FND_A | 1<<FND_B | 1<<FND_C | 1<<FND_E | 1<<FND_F | 1<<FND_G, 						// A
		1<<FND_C | 1<<FND_D | 1<<FND_E | 1<<FND_F | 1<<FND_G,									// B
		1<<FND_A | 1<<FND_D | 1<<FND_E | 1<<FND_F, 												// C
		1<<FND_B | 1<<FND_C | 1<<FND_D | 1<<FND_E | 1<<FND_G, 									// D
		1<<FND_A | 1<<FND_D | 1<<FND_E | 1<<FND_F | 1<<FND_G, 									// E
		1<<FND_A | 1<<FND_E | 1<<FND_F | 1<<FND_G 												// F
};

unsigned int FND_digit[] = {
		~(1<<FND_DIGIT_0),
		~(1<<FND_DIGIT_10),
		~(1<<FND_DIGIT_100),
		~(1<<FND_DIGIT_1000),
};

///////////////////////////////////////////////// End ///////////////////////////////////////////////






//////////////////////////////////////////// Init Function //////////////////////////////////////////

void FND_update_hex(unsigned data)
{
	FND[0] = ~FND_FONT[0xf & data];
	FND[1] = ~FND_FONT[(0xf & data>>4)];
	FND[2] = ~FND_FONT[(0xf & data>>8)];
	FND[3] = ~FND_FONT[(0xf & data>>12)];
	return;
}

void FND_update_dec(unsigned data)
{
	FND[0] = ~FND_FONT[data%10];
	FND[1] = ~FND_FONT[data/10%10];
	FND[2] = ~FND_FONT[data/100%10];
	FND[3] = ~FND_FONT[data/1000%10];
	return;
}

///////////////////////////////////////////////// End ///////////////////////////////////////////////
















