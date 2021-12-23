package main

import (
	"fmt"
	"strings"
)

func duplicate_count(s1 string) (duplicates int) {
	m := make(map[string]int)
	for _, letter := range s1 {
		m[strings.ToLower(string(letter))]++
	}
	for _, v := range m {
		if v > 1 {
			duplicates++
		}
	}
	return
}

func main() {
	fmt.Println(duplicate_count("abcde"))
	fmt.Println(duplicate_count("abcdea"))
	fmt.Println(duplicate_count("abcdeaB11"))
	fmt.Println(duplicate_count("indivisibility"))
}
