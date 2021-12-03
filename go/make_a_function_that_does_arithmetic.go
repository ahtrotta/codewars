package main

import (
	"fmt"
)

func Arithmetic(a int, b int, operator string) (result int) {
	switch operator {
	case "add":
		result = a + b
	case "subtract":
		result = a - b
	case "multiply":
		result = a * b
	case "divide":
		result = a / b
	}
	return
}

func main() {
	fmt.Println(Arithmetic(8, 2, "add"))
	fmt.Println(Arithmetic(8, 2, "subtract"))
	fmt.Println(Arithmetic(8, 2, "multiply"))
	fmt.Println(Arithmetic(8, 2, "divide"))
}
