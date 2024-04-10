# wasi-benchmark

```
time -p wasmtime go.wasm 40
102334155
real 2.15
user 2.14
sys 0.01
time -p wasmtime zig.wasm 40
102334155
real 0.52
user 0.52
sys 0.00
time -p wasmtime rust.wasm 40
102334155
real 0.44
user 0.44
sys 0.00
time -p wasmtime d.wasm 40
102334155
real 0.56
user 0.56
sys 0.00
```
