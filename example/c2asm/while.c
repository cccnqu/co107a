#include <stdio.h>

int sum(int n) {
  int s = 0;           //          @s; M=0;
  int i = 1;           //          @i; M=1;
WHILE:                 // (WHILE)
  // while (i<=n) {
  s = s + i;           //          @i; D=M;         D=i
                       //          @s; D=D+M;       D=D+s
                       //          @s; M=D;         s=D
  i = i + 1;
  // }
  // i<=n   .... => i-n <=0
  if (i<=n) goto WHILE; //         @n; D=M;         D=n
                        //         @i; D=M-D;       D=i-D  D=i-n
                        //         @WHILE; 
                        //         D; JLE
  return s;
}

int main() {
  int s10 = sum(10);
  printf("s10=%d\n", s10);
}
