package main

import (
	"fmt"
)

func BreakChocolate(n, m int) int {
	if n == 0 || m == 0 {
		return 0
	}
	return (n * m) - 1
}

func main() {
	fmt.Println(BreakChocolate(5, 5))
	fmt.Println(BreakChocolate(1, 1))
	fmt.Println(BreakChocolate(3, 1))
}
