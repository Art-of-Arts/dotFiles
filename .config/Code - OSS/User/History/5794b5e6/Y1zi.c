#include <complex.h>
#include <stdbool.h>
#include <stdio.h>


int main(){
    int numberArray[] = {1,2333,482,7}, i;

    for ( i = 0; i < sizeof(numberArray) / sizeof(numberArray[0]); i++ ) {
        printf("%p ( %d )\n", *numberArray[i], numberArray[i]);
    }
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