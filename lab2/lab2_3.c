#include <stdio.h>

int is_prime(int n) {
  if (n < 2) return 0;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return 0;
  }
  return 1;
}

int main() {
  int n;
  printf("Enter an integer n (n >= 2): ");
  if (scanf("%d", &n) != 1) {
    printf("Invalid input.\n");
    return 1;
  }
  if (n < 2) {
    printf("Error: n must be >= 2.\n");
    return 1;
  }
  printf("Prime numbers up to %d:\n", n);
  for (int i = 2; i <= n; i++) {
    if (is_prime(i)) {
      printf("%d ", i);
    }
  }
  printf("\n");
  return 0;
}
