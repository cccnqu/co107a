#include <stdio.h>

int max(int a, int b) {
  int c;
  if (a > b)  
    c = a;
  else
    c = b;
  return c;
}

int main() {
  int m = max(3, 8);
  printf("m=%d\n", m);
}
