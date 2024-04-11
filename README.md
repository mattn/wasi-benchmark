# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## RESULT

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|Ubuntu clang version 14.0.0-1ubuntu1.1|23495|2.45|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|30035|1.32|
|go.wasm|go version go1.22.2 linux/amd64|1638162|5.86|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|72462|1.15|
|zig.wasm|zig 0.11.0|5061|1.76|

## LICENSE

Yasuhiro Matsumoto (a.k.a. mattn)
