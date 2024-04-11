#!/bin/bash

set -e

NUMBER=${1:-40}

cat <<EOF
# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number ${NUMBER}.

## Result

|Name|Version|Size|Time|
|-|-|-:|-|
EOF

/bin/ls *.wasm | /usr/bin/sort | while read WASM; do
  NAME=$(basename $WASM .wasm)
  VERSION=$(make -s $NAME-version 2> /dev/null)
  SIZE=$(stat --printf="%s" $WASM)
  OUTPUT=$(/usr/bin/time --format=%e sh -c "wasmtime $WASM $NUMBER > /dev/null 2>&1" 2>&1)
  echo "|$WASM|$VERSION|$SIZE|$OUTPUT|"
done

cat <<EOF

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
EOF
