#include <stdio.h>

int oneInt;
float oneFloat;
double oneDouble;
char oneChar;
char StringChar[5];

int main () {
    printf("sizes of different variable types: (to print them you need to use the `long unsigned \noneInt %lu\noneFloat %lu\noneDouble %lu\noneChar %lu\nextra: 5charString %lu",sizeof(oneInt),sizeof(oneFloat),sizeof(oneDouble),sizeof(oneChar),sizeof(StringChar));
}