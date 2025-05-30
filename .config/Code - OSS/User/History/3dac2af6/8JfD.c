#include <stdio.h>

int day;

int main () {
    day = 4;

    switch (day) {
        case 5:
            printf("it is saturdy yippie\n");
            break;
        case 6:
            printf("its sunnday yippie\n");
            break;
        default:
            printf("its a work day, can't wait for the weekend\n");
            break;
    }

    day = 5;

    switch (day) {
        case 5:
            printf("it is saturdy yippie\n");
            break;
        case 6:
            printf("its sunnday yippie\n");
            break;
        default:
            printf("its a work day, can't wait for the weekend\n");
            break;
    }

    day = 6;

    switch (day) {
        case 5:
            printf("it is saturdy yippie\n");
            break;
        case 6:
            printf("its sunnday yippie\n");
            break;
        default:
            printf("its a work day, can't wait for the weekend\n");
            break;
    }
}