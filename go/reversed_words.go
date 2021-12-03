package main

import (
	"fmt"
	"strings"
)

func ReverseWords(str string) string {
	words := strings.Split(str, " ")
	var newSlice []string
	for i := len(words) - 1; i >= 0; i-- {
		newSlice = append(newSlice, words[i])
	}
	return strings.Join(newSlice, " ")
}

func main() {
    fmt.Println(ReverseWords("hello world!"))
    fmt.Println(ReverseWords("yoda doesn't speak like this"))
    fmt.Println(ReverseWords("foobar"))
    fmt.Println(ReverseWords("kata editor"))
    fmt.Println(ReverseWords("row row row your boat"))
}
