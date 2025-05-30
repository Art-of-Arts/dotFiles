#include <stdio.h>

const int NUMBER = 10093774;
int number = 10093774, revNumber = 0;

int main () {
    while (number) {
        printf("revNumber: %d\nnumber: %d\nstep 1: %d\nstep 2: %d\n",revNumber, number, revNumber * 10, revNumber * 10 + number % 10);
        revNumber = revNumber * 10 + number % 10;
        number /= 10;
        printf("step 3: %d\n\n", revNumber);
    }
}