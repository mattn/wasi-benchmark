# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## Result

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|clang version 18.1.2 (https://github.com/llvm/llvm-project 26a1d6601d727a96f4301d0d8647b5a42760ae0c)|23759|2.90|
|cpp.wasm|clang version 18.1.2 (https://github.com/llvm/llvm-project 26a1d6601d727a96f4301d0d8647b5a42760ae0c)|1995219|1.50|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|29961|1.28|
|go.wasm|go version go1.22.2 linux/amd64|1638162|5.65|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|59660|1.19|
|tinygo.wasm|tinygo version 0.31.2 linux/amd64|28798|1.64|
|zig-fast.wasm|zig 0.11.0|6556|1.43|
|zig-small.wasm|zig 0.11.0|5061|1.81|

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
