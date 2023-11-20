#ifndef FND_H_ // FND_H_ �� Define�Ǿ� ���� �ʴٸ�, endif���� Define�ض�.

#define FND_H_ // ���⼭ Define������, ���� ���� ���⿡ �־ Define �� ��.

////////////// Define //////////////
// FND ��Ʈ�� ���� Define
#define FND_A  0
#define FND_B  1
#define FND_C  2
#define FND_D  3
#define FND_E  4
#define FND_F  5
#define FND_G  6
#define FND_P  7 // dot point

// FND Digit�� ���� Define
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