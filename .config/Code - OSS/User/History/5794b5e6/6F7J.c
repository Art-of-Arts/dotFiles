#include <complex.h>
#include <stdbool.h>
#include <stdio.h>


int main(){
    int number;
    char character;

    printf("input: ");
    scanf("%d %c",&number, &character);

    printf("number: %d\ncharacter: %c",number,character);
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