package main

import "fmt"

func Solution(word string) string {
	var result string
	for i := 0; i < len(word); i++ {
		result = string(word[i]) + result
	}

	return result
}

func main() {
	fmt.Println(Solution("world"))
	fmt.Println(Solution("word"))
}
