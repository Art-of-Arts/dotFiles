#include <stdio.h>

int randomInt = 102094;

int main () {
    printf("var contents: %d\nvar memory: %p", randomInt, &randomInt);
}