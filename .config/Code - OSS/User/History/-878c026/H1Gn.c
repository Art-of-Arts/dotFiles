#include <stdbool.h>
#include <stdio.h>

int oneInt;
float oneFloat;
double oneDouble;
char oneChar;
char StringChar[5];
bool oneBool;

int main () {
    printf("sizes of different variable types: ( to print them you need to use the `long unsigned format specifier` aka lu )\noneInt %lu\noneFloat %lu\noneDouble %lu\noneChar %lu\nextra:\n5 charString %lu\nbool %lu",sizeof(oneInt),sizeof(oneFloat),sizeof(oneDouble),sizeof(oneChar),sizeof(StringChar),sizeof(oneBool));
}