NUMBER=40

.PHONY: bench clean

all : bench

bench: go.wasm zig.wasm rust.wasm
	time -p wasmtime go.wasm ${NUMBER}
	time -p wasmtime zig.wasm ${NUMBER}
	time -p wasmtime rust.wasm ${NUMBER}

go.wasm: main.go
	GOOS=wasip1 GOARCH=wasm go build -o go.wasm main.go

zig.wasm: main.zig
	zig build-exe -target wasm32-wasi-musl -O ReleaseFast main.zig -femit-bin=zig.wasm

rust.wasm: main.rs
	rustc main.rs -O --target wasm32-wasi -o rust.wasm

clean:
	-rm *.o *.wasm
