#include <stdio.h>

int i = 0;

int main () {
    while (i <= 10) {
        printf ("%d\n",i);
        i++;
    }
    printf("loop broken");
}