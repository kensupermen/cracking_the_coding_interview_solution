#include<stdio.h>

void swap(int &a, int &b) {
  a = a + b;
  b = a - b;
  a = a - b;
}

void bubble_sort(int a[], int n) {
  for (int i = 0; i < n; i++) {
    for (int j = n - 1; j > i; j--) {
      if (a[j] < a[j-1]) {
        swap(a[j], a[j-1]);
      }
    }
  }
}

int main() {

  int a[10] = { 1, 5, 8, 2, 4, 3, 9, 10, 7, 6 };
  int n = 10;

  bubble_sort(a, n);

  for (int i = 0; i < n; i++) {
    printf("%d \t", a[i]);
  }
  return 0;
}
