package main

import (
	"fmt"
)

func InAscOrder(numbers []int) bool {
	last := numbers[0]
	for i := 1; i < len(numbers); i++ {
		if last > numbers[i] {
			return false
		}
		last = numbers[i]
	}
	return true
}

func main() {
	fmt.Println(InAscOrder([]int{1, 2, 4, 7, 19}))
	fmt.Println(InAscOrder([]int{1, 2, 3, 4, 5}))
	fmt.Println(InAscOrder([]int{1, 6, 10, 18, 2, 4, 20}))
	fmt.Println(InAscOrder([]int{9, 8, 7, 6, 5, 4, 3, 2, 1}))
}
