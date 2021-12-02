package main

import (
	"fmt"
)

func SquareSum(numbers []int) (sum int) {
	for _, number := range numbers {
		sum += (number * number)
	}
	return
}

func main() {
	fmt.Println(SquareSum([]int{1, 2}))
	fmt.Println(SquareSum([]int{0, 3, 4, 5}))
}
