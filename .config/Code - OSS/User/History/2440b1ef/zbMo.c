#include <stdio.h>

char str1[] = "Sentance 1 SMILE", str2[] = "Sentance 2 smile";
int i;

int main () {
    printf("%s\n",str1);
    for (i = 0; i >= sizeof(str1)/sizeof(str1[0]); i++) {
        if (str1[i] == str2[i]) {
            printf(" ");
        }
        else {
            printf("%c",str2[i]);
        }
    }
}