#include <stdio.h>
#include <stdbool.h>

bool testBool;

int main () {
    testBool = true;
    printf("test bool is true : %d\n", testBool);
    testBool = false;
    printf("test bool is false : %d", testBool);
}

/*
bools were added to c as an afterthought so they just use ints that can only be a 1 or a 0
they also use te %d identifier
*/