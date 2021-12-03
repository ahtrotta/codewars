package main

import (
	"fmt"
)

func Factorial(n int) int {
	if n < 2 {
		return 1
	}
	return n * Factorial(n - 1)
}

func main() {
	fmt.Println(Factorial(0))
	fmt.Println(Factorial(1))
	fmt.Println(Factorial(4))
	fmt.Println(Factorial(17))
}
