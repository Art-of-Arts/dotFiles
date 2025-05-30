#include <stdio.h>

int i;

int main () {
    for (i = 0; i < 10; i++) {
        if (i == 4) {
            break:
        }
        printf("%d\n");
    }
}