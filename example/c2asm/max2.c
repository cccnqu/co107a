#include <stdio.h>

int max(int a, int b) {
  int c;
  if (a <= b) goto ELSE;
  c = a;
  goto EXIT;
ELSE:
  c = b;
EXIT:
  return c;
}

int main() {
  int m = max(3, 8);
  printf("m=%d\n", m);
}
