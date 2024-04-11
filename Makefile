NUMBER=41

WASI_SDK?=$(HOME)/wasi-sdk-21.0

.PHONY: benchmark clean c-version go-version d-version rust-version zig-version

all : benchmark

benchmark: go.wasm zig.wasm rust.wasm d.wasm c.wasm
	./build.sh | tee README.md

go.wasm: main.go
	GOOS=wasip1 GOARCH=wasm go build -o $@ $<

go-version:
	-@go version

zig.wasm: main.zig
	zig build-exe -target wasm32-wasi-musl -O ReleaseFast $< -femit-bin=$@

zig-version:
	-@zig version

rust.wasm: main.rs
	rustc $< -O --target wasm32-wasi -o $@

rust-version:
	-@rustc -V

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

d-version:
	-@ldc2 --version | head -n 1 | sed 's/://'

c.wasm: main.c
	$(WASI_SDK)/bin/clang -O3 -o $@ $<

c-version:
	-@clang -dumpversion

clean:
	-rm *.o *.wasm
