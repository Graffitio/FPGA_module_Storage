#ifndef FND_H_ // FND_H_ 가 Define되어 있지 않다면, endif까지 Define해라.

#define FND_H_ // 여기서 Define했으니, 이후 여기 저기에 넣어도 Define 안 됨.

////////////// Define //////////////
// FND 폰트를 위한 Define
#define FND_A  0
#define FND_B  1
#define FND_C  2
#define FND_D  3
#define FND_E  4
#define FND_F  5
#define FND_G  6
#define FND_P  7 // dot point

// FND Digit을 위한 Define
#define FND_DIGIT_0     0
#define FND_DIGIT_10    1
#define FND_DIGIT_100   2
#define FND_DIGIT_1000  3
//////////////// End /////////////////



////////////// Variable //////////////
unsigned int FND_FONT[];
unsigned int FND_digit[];
unsigned int FND[4];
//////////////// End /////////////////



////////////// Prototype //////////////
void FND_update_hex(unsigned data);
void FND_update_dec(unsigned data);
//////////////// End /////////////////

#endif
