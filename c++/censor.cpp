#include<stdio.h>
#include<string.h>


char *censor(char *s, char *t) {
  for (int i = 0; i < strlen(s); i++) {
    if (s[i] == t) {
    }
  }
  return s;
}

int main() {

  char *s = "Cong hoa xa hoi chu nghia viet nam";

  printf("%s", censor(s, "ng"));
  printf("\ns = %s", s);
  return 0;
}
