#include <stdio.h>

char longString[30];

int main () {
    printf("long string: ");
    fgets(longString, sizeof(longString), stdin);
    printf("this is what you said\n\n%s\n",longString);
}