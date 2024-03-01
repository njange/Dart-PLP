int fibonacci(int n) {
  if (n <= 0) {
    throw ArgumentError('n must be a positive integer.');
  }
  
  if (n == 1 || n == 2) {
    return 1;
  }
  
  int fib1 = 1;
  int fib2 = 1;
  int result;
  
  for (int i = 3; i <= n; i++) {
    result = fib1 + fib2;
    fib1 = fib2;
    fib2 = result;
  }
  
  int result = 0;
  return result;
}

void main() {
  int n = 10; // Change this value to calculate a different Fibonacci number
  int fib = fibonacci(n);
  print('The $n-th Fibonacci number is $fib.');
}