#!/bin/bash

set -e

NUMBER=${1:-40}

cat <<EOF
# wasi-benchmark

Benchmark of WASI in several languages. This benchmark uses fibonacci number ${NUMBER}.

## RESULT

|Name|Version|Size|Time|
|-|-|-:|-|
EOF

/bin/ls *.wasm | /usr/bin/sort | while read NAME; do
  WASM=$(basename $NAME .wasm)
  VERSION=$(make -s $WASM-version 2> /dev/null)
  SIZE=$(stat --printf="%s" $NAME)
  OUTPUT=$(/usr/bin/time --format=%e sh -c "wasmtime $NAME $NUMBER > /dev/null 2>&1" 2>&1)
  echo "|$NAME|$VERSION|$SIZE|$OUTPUT|"
done

cat <<EOF

## LICENSE

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
EOF
