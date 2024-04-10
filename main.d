extern (C):
nothrow:
@nogc:

__gshared int errno;
void _Exit(int status) @trusted;
void perror(const char* s) @trusted;
pragma(printf) int printf(const(char)* format, ...) @trusted;
size_t strlen(const char* s) @trusted;
uint strtoul(const char* str, char** str_end, int base) @trusted;

uint fib(uint n)
{
    if (n < 2) return n;
    else return fib(n - 2) + fib(n - 1);
}

// https://github.com/WebAssembly/wasi-libc/commit/d9066a87c04748e7381695eaf01cc5c9a9c3003b
int __main_argc_argv(int argc, char** argv)
{
    if (argc != 2)
    {
        perror("error: argument not given");
        _Exit(70);
    }
    char[] s = argv[1][0 .. strlen(argv[1])];
    char* end = null;
    uint n = strtoul(s.ptr, &end, 10);
    if (errno != 0)
    {
        perror("error: argument not a integer");
        _Exit(70);
    }
    printf("%lu\n", fib(n));
    return 0;
}
