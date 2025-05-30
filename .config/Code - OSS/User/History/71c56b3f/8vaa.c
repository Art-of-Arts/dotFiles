#include <stdio.h>
#include <stdlib.h>

int randomInt = 102094;
int* ptr = &randomInt;

int main () {
    printf("var contents: %d\nvar memory: %p", *ptr, ptr);
}