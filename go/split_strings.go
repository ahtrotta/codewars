package main

import (
	"fmt"
)

func Solution(str string) (result []string) {
	current := ""
	for i, char := range str {
		current += string(char)
		if i == len(str)-1 && len(current) == 1 {
			result = append(result, current+"_")
		} else if len(current) == 2 {
			result = append(result, current)
			current = ""
		}
	}
	return
}

func main() {
	fmt.Println(Solution("abc"))
	fmt.Println(Solution("dawsd"))
	fmt.Println(Solution("awsaws"))
}
