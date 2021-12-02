package main

import "fmt"

func MakeNegative(x int) int {
	if x > 0 {
		return x * -1
	} else {
		return x
	}
}

func main() {
	fmt.Println(MakeNegative(1))
	fmt.Println(MakeNegative(-5))
	fmt.Println(MakeNegative(0))
	fmt.Println(MakeNegative(42))
}
