# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## RESULT

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|Ubuntu clang version 14.0.0-1ubuntu1.1|23495|2.65|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|30035|1.26|
|go.wasm|go version go1.22.2 linux/amd64|1638162|5.17|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|72462|1.15|
|tinygo.wasm|tinygo version 0.31.2 linux/amd64 (using go version go1.22.2 and LLVM version 17.0.1)|28798|1.64|
|zig.wasm|zig 0.11.0|5061|1.84|

## LICENSE

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
