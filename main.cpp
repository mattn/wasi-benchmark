#include <iostream>

int
fib(int n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n -2);
}

int
main(int argc, char* argv[]) {
  if (argc != 2) {
    std::cerr << "Usage: " << argv[0] << " <number>" << std::endl;
    return 1;
  }
  int n = std::stoi(argv[1]);
  if (n < 0) {
    std::cerr << "Number should be non-negative." << std::endl;
    return 1;
  }
  std::cout << fib(n) << std::endl;

  return 0;
}
