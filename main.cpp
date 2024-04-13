#include <print>
#include <vector>

long long
fibonacci(int n, std::vector<long long>& memo) {
    if (n <= 1)
        return n;
    if (memo[n] != -1)
        return memo[n];
    return memo[n] = fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
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
    std::vector<long long> memo(n + 1, -1);
    std::println("{}", fibonacci(n, memo));

    return 0;
}
