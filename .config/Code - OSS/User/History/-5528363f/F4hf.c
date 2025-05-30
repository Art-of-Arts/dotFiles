#include <stdio.h>
10093774
const int NUMBER = 10093774;
int number = 10093774, revNumber = 0;

int main () {
    while (number) {
        printf("step 1: %d\n step 2: %d\n");
        revNumber = revNumber * 10 + number % 10;
    }
}