package main

import (
	"fmt"
)

func Seven(n int64) []int {
	count := 0
	for n > 99 {
		n = n/10 - (2 * (n % 10))
		count++
	}

	return []int{int(n), count}
}

func main() {
	fmt.Println(Seven(477557101))
	fmt.Println(Seven(477557102))
}
