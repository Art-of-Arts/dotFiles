#include <stdio.h>

int i;

int main () {
    printf("what happens when break is called \\/\n\n");

    for (i = 0; i < 10; i++) {
        if (i == 4) {
            break;
        }
        printf("%d\n",i);
    }

    printf("\n\nwhat happens when continue is called \\/\n\n");

    for (i = 0; i < 10; i++) {
        if (i == 4) {
            continue;
        }
        printf("%d\n",i);
    }
}