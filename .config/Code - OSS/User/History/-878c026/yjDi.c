#include <stdio.h>

int oneInt;
float oneFloat;
double oneDouble;
char oneChar;
char StringChar[5];

int main () {
    printf("sizes of different variable types:\noneInt %d\noneFloat %d\noneDouble %d\noneChar %d\nextra: 5charString %d",sizeof(oneInt),sizeof(oneFloat),sizeof(oneDouble),sizeof(oneChar),sizeof(StringChar));
}