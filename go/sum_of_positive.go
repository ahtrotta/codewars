package main

import "fmt"

func PositiveSum(numbers []int) int {
	sum := 0

	for _, number := range numbers {
		if number <= 0 {
			continue
		}
		sum += number
	}

	return sum
}

func main() {
	fmt.Println(PositiveSum([]int{1, 2, 3, 4, 5}))
	fmt.Println(PositiveSum([]int{1, -2, 3, 4, 5}))
	fmt.Println(PositiveSum([]int{}))
	fmt.Println(PositiveSum([]int{-1, -2, -3, -4, -5}))
	fmt.Println(PositiveSum([]int{-1, 2, 3, 4, -5}))
}
