#include <stdio.h>

float price;
int quantity;

int main () {
    price = 19.99, quantity = 3;
    printf("%.2f", (float) price * quantity);
}