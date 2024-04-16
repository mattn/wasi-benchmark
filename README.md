# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## Result

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|clang version 18.1.2 (https://github.com/llvm/llvm-project 26a1d6601d727a96f4301d0d8647b5a42760ae0c)|23639|1.21|
|cpp.wasm|clang version 18.1.2 (https://github.com/llvm/llvm-project 26a1d6601d727a96f4301d0d8647b5a42760ae0c)|187184|1.48|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|29961|1.24|
|go.wasm|go version go1.22.2 linux/amd64|1638162|5.06|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|59660|1.13|
|tinygo.wasm|tinygo version 0.31.2 linux/amd64|28798|1.60|
|zig-fast.wasm|zig 0.11.0|6556|1.38|
|zig-small.wasm|zig 0.11.0|5061|1.74|

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
