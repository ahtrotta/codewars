package main

import (
	"fmt"
	"strings"
)

func ToCamelCase(s string) string {
	s = strings.ReplaceAll(s, "-", "_")
	words := strings.Split(s, "_")
	for i := 1; i < len(words); i++ {
		words[i] = strings.ToUpper(string(words[i][0])) + words[i][1:]
	}
	return strings.Join(words, "")
}

func main() {
	fmt.Println(ToCamelCase(""))
	fmt.Println(ToCamelCase("The_Stealth_Warrior"))
	fmt.Println(ToCamelCase("the-Stealth-Warrior"))
}
