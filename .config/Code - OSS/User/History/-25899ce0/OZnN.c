#include <stdio.h>

int i = 0;

int main () {
  do {
    printf("%d\n", i);
    i++;
  }
  while (i < 5);
}