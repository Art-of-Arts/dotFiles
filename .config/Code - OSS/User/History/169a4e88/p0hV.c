#include <stdio.h>

int num1;



int main () {
    num1 = 104;
    
    if (num1 < 10) {
        printf("number 1 is larger than 10\n");
    }
    else if (num1 > 10) {
        printf("number 1 is smaller than 10\n");
    }
    else {
        printf("number 1 is 10\n");
    }

    num1 = 1;

    if (num1 < 10) {
        printf("number 1 is larger than 10\n");
    }
    else if (num1 > 10) {
        printf("number 1 is smaller than 10\n");
    }
    else {
        printf("number 1 is 10\n");
    }

    num1 = 10;

    if (num1 < 10) {
        printf("number 1 is larger than 10\n");
    }
    else if (num1 >10) {
        printf("number 1 is smaller than 10\n");
    }
    else {
        printf("number 1 is 10\n");
    }

}