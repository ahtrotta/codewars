package main

import (
	"fmt"
)

func OddCount(n int) int {
	if n%2 == 1 {
		return (n - 1) / 2
	}
	return n / 2
}

func main() {
	fmt.Println(OddCount(15))
	fmt.Println(OddCount(14))
	fmt.Println(OddCount(15023))
}
