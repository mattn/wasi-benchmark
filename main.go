package main

import (
	"os"
	"strconv"
)

func fib(num uint32) uint32 {
	if num <= 1 {
		return num
	}
	return fib(num-2) + fib(num-1)
}

func main() {
	num, err := strconv.ParseUint(os.Args[1], 10, 32)
	if err != nil {
		panic(err)
	}
	println(fib(uint32(num)))
}
