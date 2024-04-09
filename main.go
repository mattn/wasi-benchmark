package main

import (
	"os"
	"strconv"
)

func fib(num uint64) uint64 {
	if num <= 1 {
		return num
	}
	return fib(num-2) + fib(num-1)
}

func main() {
	num, err := strconv.ParseUint(os.Args[1], 10, 64)
	if err != nil {
		panic(err)
	}
	println(fib(num))
}
