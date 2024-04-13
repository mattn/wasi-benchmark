# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number 42.

## Result

|Name|Version|Size|Time|
|-|-|-:|-|
|c.wasm|clang version 16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)|27400|1.57|
|cpp.wasm|clang version 16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)|193987|2.17|
|d.wasm|LDC - the LLVM D compiler (1.37.0)|29994|1.62|
|go.wasm|go version go1.22.2 linux/amd64|1638162|6.63|
|rust.wasm|rustc 1.77.1 (7cf61ebde 2024-03-27)|59660|1.47|
|tinygo.wasm|tinygo version 0.31.2 linux/amd64|28798|1.90|
|zig-fast.wasm|zig 0.11.0|6556|1.65|
|zig-small.wasm|zig 0.11.0|5061|2.22|

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
