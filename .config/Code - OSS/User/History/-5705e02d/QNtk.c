#include <stdio.h>

int table, times, i;

int main () {
    table = 3, times = 12;
    for (i = 1;  i <= times; ++i) {
        printf("%d x %d = %d\n",table,i,table*i);
    }
}