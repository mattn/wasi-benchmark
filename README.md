# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## Result

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|clang version 17.0.6|23304|1.41|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|29994|1.25|
|go.wasm|go version go1.22.2 linux/amd64|1638162|5.05|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|59660|1.12|
|tinygo.wasm|tinygo version 0.31.2 linux/amd64|28798|1.62|
|zig-fast.wasm|zig 0.11.0|6556|1.34|
|zig-small.wasm|zig 0.11.0|5061|1.74|

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
