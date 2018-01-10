#include<stdio.h>
#include<stdlib.h>
#include<limit.h>

int main() {
  int m,n;
  //printf("Please input M and N \n");
  //scanf("%d %d", &m, &n);

  m = 5;
  n = 5;
  int a[1000][1000];
  // Input matrix
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      a[i][j] = rand() % 100;
    }
  }

  int sumMatrix = 0;
  int max = INT_MIN;

  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      sumMatrix = a[i][j];
      if (max < a[i][j]) {
        max = a[i][j];
      }
    }
  }

  if (max == (sumMatrix - max)) {
    return max;
  }
  return 0;
}
