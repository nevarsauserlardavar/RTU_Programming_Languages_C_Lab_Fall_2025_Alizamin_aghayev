#include <stdio.h>

long long factorial(int n) {
  long long result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

int main() {
  int n;
  printf("Enter a non-negative integer n: ");
  if (scanf("%d", &n) != 1) {
    printf("Invalid input.\n");
    return 1;
  }
  if (n < 0) {
    printf("Error: n must be >= 0.\n");
    return 1;
  }
  printf("%d! = %lld\n", n, factorial(n));
  return 0;
}
