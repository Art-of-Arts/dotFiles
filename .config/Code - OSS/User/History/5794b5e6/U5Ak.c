#include <complex.h>
#include <stdbool.h>
#include <stdio.h>


int main(){
    int randomInt = 2993;
    printf("the int: %d\nis sitting in memory adress: %p", randomInt, &randomInt);
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