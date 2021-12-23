package main

import (
	"fmt"
	"strings"
)

func DuplicateEncode(word string) (result string) {
	lower := strings.ToLower(word)
	m := make(map[string]int)
	for _, character := range lower {
		m[string(character)]++
	}
	for _, character := range lower {
		if m[string(character)] > 1 {
			result += ")"
		} else {
			result += "("
		}
	}
	return
}

func main() {
	fmt.Println(DuplicateEncode("din"))
	fmt.Println(DuplicateEncode("recede"))
	fmt.Println(DuplicateEncode("(( @"))
	fmt.Println(DuplicateEncode("Success"))
}
