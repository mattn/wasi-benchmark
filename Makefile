NUMBER=40

WASI_SDK=$(HOME)/wasi-sdk-21.0

.PHONY: benchmark clean

all : benchmark

benchmark: go.wasm zig.wasm rust.wasm d.wasm
	./build.sh | tee README.md

go.wasm: main.go
	GOOS=wasip1 GOARCH=wasm go build -o $@ $<

zig.wasm: main.zig
	zig build-exe -target wasm32-wasi-musl -O ReleaseFast $< -femit-bin=$@

rust.wasm: main.rs
	rustc $< -O -C strip=symbols --target wasm32-wasi -o $@

d.wasm: main.d
	ldc2 \
		--mtriple=wasm32-unknown-wasi \
		-O \
		--betterC \
		-L$(WASI_SDK)/lib/clang/17/lib/wasi/libclang_rt.builtins-wasm32.a \
		-L$(WASI_SDK)/share/wasi-sysroot/lib/wasm32-wasi/crt1.o \
		-L$(WASI_SDK)/share/wasi-sysroot/lib/wasm32-wasi/libc.a \
		-L--gc-sections \
		-of=$@ \
		$<

clean:
	-rm *.o *.wasm
