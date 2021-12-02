package main

import "fmt"

func SmallestIntegerFinder(numbers []int) int {
	smallest := numbers[0]
	for i := 1; i < len(numbers); i++ {
		current := numbers[i]
		if current < smallest {
			smallest = current
		}
	}
	return smallest
}

func main() {
	fmt.Println(SmallestIntegerFinder([]int{34, 15, 88, 2}))
	fmt.Println(SmallestIntegerFinder([]int{34, -345, -1, 100}))
}
