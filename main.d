extern (C):
nothrow:
@nogc:

pragma(printf) int printf(const(char)* format, ...) @trusted;

ulong fib(ulong n)
{
    if (n < 2) return n;
    else return fib(n - 2) + fib(n - 1);
}

// https://github.com/WebAssembly/wasi-libc/commit/d9066a87c04748e7381695eaf01cc5c9a9c3003b
int __main_void()
{
    printf("%llu\n", fib(40));
    return 0;
}
