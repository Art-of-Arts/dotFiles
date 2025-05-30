#include <stdio.h>

int number;
char character;

int main () {
    
    printf("input a number and a character seperated by a space <format:x x>\ninput: ");
    scanf("%d %c", &number, &character);
    printf("\nnumber: %d\ncharacter: %c", number, character);

    return 0;
}