NUMBER=40

WASI_SDK=$(HOME)/wasi-sdk-21.0

.PHONY: bench clean

all : bench

bench: go.wasm zig.wasm rust.wasm d.wasm
	(echo '# wasi-benchmark' && \
	echo '```' && \
	ls -la *.wasm && \
	echo '```' && \
	echo '```' && \
	time -p wasmtime go.wasm ${NUMBER} 2>&1 && \
	time -p wasmtime zig.wasm ${NUMBER} 2>&1 && \
	time -p wasmtime rust.wasm ${NUMBER} 2>&1 && \
	time -p wasmtime d.wasm ${NUMBER} 2>&1 && \
	echo '```') 2>&1 > README.md

go.wasm: main.go
	GOOS=wasip1 GOARCH=wasm go build -o go.wasm main.go

zig.wasm: main.zig
	zig build-exe -target wasm32-wasi-musl -O ReleaseFast main.zig -femit-bin=zig.wasm

rust.wasm: main.rs
	rustc main.rs -O --target wasm32-wasi -o rust.wasm

d.wasm: main.d
	ldc2 \
		--mtriple=wasm32-unknown-wasi \
		-O \
		--betterC \
		-L$(WASI_SDK)/lib/clang/17/lib/wasi/libclang_rt.builtins-wasm32.a \
		-L$(WASI_SDK)/share/wasi-sysroot/lib/wasm32-wasi/crt1.o \
		-L$(WASI_SDK)/share/wasi-sysroot/lib/wasm32-wasi/libc.a \
		-L--gc-sections \
		-of=d.wasm \
		main.d

clean:
	-rm *.o *.wasm
