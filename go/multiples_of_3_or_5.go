package main

import (
	"fmt"
)

func Multiple3And5(number int) (sum int) {
	for i := 3; i < number; i++ {
		if i%3 == 0 || i%5 == 0 {
			sum += i
		}
	}
	return
}

func main() {
	fmt.Println(Multiple3And5(10))
}
