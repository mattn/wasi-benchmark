# wasi-benchmark

```
time -p wasmtime go.wasm
102334155
real 2.05
user 2.05
sys 0.00
time -p wasmtime zig.wasm
102334155
real 0.47
user 0.47
sys 0.00
time -p wasmtime rust.wasm
102334155
real 0.42
user 0.42
sys 0.00
```
