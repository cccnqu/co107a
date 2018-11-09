#include <stdio.h>

int main() {
              // @a
  int a = 3;  // M=3

  int b = 5;  // @b
              // M=5
  int c = a + b; // @a; D = M;          D = a
                 // @b; D=D+M;          D = a+b
                 // @c; M=D;            c = D




  printf("a=%d b=%d c=%d\n", a, b, c);
}
