#include <stdio.h>

int main() {
  int local_24;
  local_24 = 0;
  char encoded_string[] = "}a:Vh|}a:g}8j=}89gV<p<}:dV8<Vg9}V<9V<:j|{:";

  for (int i = 0; encoded_string[i] != '\0'; i++) {
    putchar(encoded_string[i] ^ 9U);
  }

  return 0;
}
