package main

import (
	"fmt"
	"strings"
)

func PartList(arr []string) (result string) {
	for i := 1; i < len(arr); i++ {
		firstPart := strings.Join(arr[:i], " ")
		secondPart := strings.Join(arr[i:], " ")
		result += fmt.Sprintf("(%s, %s)", firstPart, secondPart)
	}
	return
}

func main() {
	fmt.Println(PartList([]string{"I", "wish", "I", "hadn't", "come"}))
	fmt.Println(PartList([]string{"cdIw", "tzIy", "xDu", "rThG"}))
}
