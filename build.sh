#!/bin/bash

set -e

NUMBER=${1:-40}

echo "# wasi-benchmark"
echo "|Name|Size|Time|"
echo "|-|-|-|"
/bin/ls *.wasm | /usr/bin/sort | while read NAME; do
  SIZE=$(stat --printf="%s" $NAME)
  OUTPUT=$(/usr/bin/time --format=%e sh -c "wasmtime $NAME $NUMBER > /dev/null 2>&1" 2>&1)
  echo "|$NAME|$SIZE|$OUTPUT|"
done
