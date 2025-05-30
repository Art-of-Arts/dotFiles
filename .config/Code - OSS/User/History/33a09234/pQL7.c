#include <stdio.h>

float price;
int quantity;

int main () {
    price = 19.99, quantity = 3;
    printf("%f", (float) price * quantity);
}