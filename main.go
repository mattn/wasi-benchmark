package main

func fib(num int64) int64 {
	if num <= 1 {
		return num
	}
	return fib(num-2) + fib(num-1)
}

func main() {
	println(fib(40))
}
