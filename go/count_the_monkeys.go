package main

import (
	"fmt"
)

func monkeyCount(n int) []int {
	result := make([]int, n)
	for i := 1; i <= n; i++ {
		result[i - 1] = i
	}
	return result
}

func main() {
	fmt.Println(monkeyCount(1))
	fmt.Println(monkeyCount(2))
	fmt.Println(monkeyCount(3))
	fmt.Println(monkeyCount(4))
	fmt.Println(monkeyCount(5))
	fmt.Println(monkeyCount(6))
	fmt.Println(monkeyCount(7))
	fmt.Println(monkeyCount(8))
	fmt.Println(monkeyCount(9))
	fmt.Println(monkeyCount(10))
}
