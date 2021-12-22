package main

import (
	"fmt"
	"strings"
)

func reverseWord(word string) (result string) {
	for i := len(word) - 1; i >= 0; i-- {
		result += string(word[i])
	}
	return
}

func SpinWords(str string) string {
	words := strings.Fields(str)
	for i, word := range words {
		if len(word) > 4 {
			words[i] = reverseWord(word)
		}
	}
	return strings.Join(words, " ")
}

func main() {
    fmt.Println(SpinWords("Welcome"))
    fmt.Println(SpinWords("to"))
    fmt.Println(SpinWords("CodeWars"))
    fmt.Println(SpinWords("Hey fellow warriors"))
    fmt.Println(SpinWords("Burgers are my favorite fruit"))
    fmt.Println(SpinWords("Pizza is the best vegetable"))
}
