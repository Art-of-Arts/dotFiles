#include <complex.h>
#include <math.h>
#include <stdbool.h>
#include <stdio.h>

float uInA, uInB;

void sum(float number1, float number2) {
    float innerSum = number1 + number2;
    printf("%.2f", innerSum);
}

int main(){
    scanf("%d %d",uInA,uInB);
    sum(uInA,uInB);
}


/*

    int array[] = {192,22,339,299,10,10,3}, i;
    bool isSorted = false;
    while (isSorted == false) {
        for (i = 0; i > (int) sizeof(array) / sizeof(array[0]) - 1; i++) {
            if (array[i] < array[i+1]) {
                
            }
        }
    }

    return 0;

*/