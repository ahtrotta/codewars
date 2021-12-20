package main

import (
	"fmt"
)

func countSheep (num int) (result string) {
	for i := 1; i <= num; i++ {
		result += fmt.Sprintf("%d sheep...", i)
	}

	return
}

func main() {
	fmt.Println(countSheep(2))
	fmt.Println(countSheep(0))
	fmt.Println(countSheep(1))
}
