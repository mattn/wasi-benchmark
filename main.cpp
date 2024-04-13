#include <print>

int
fib(int n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n -2);
}

int
main(int argc, char* argv[]) {
    if (argc != 2) {
        std::println("Usage: {} <number>", argv[0]);
        return 1;
    }
    int n = std::stoi(argv[1]);
    if (n < 0) {
        std::println("Number should be non-negative.");
        return 1;
    }
    std::println("{}", fibonacci(n));

    return 0;
}
