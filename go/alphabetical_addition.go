package main

import (
	"fmt"
)

func AddLetters(letters []rune) rune {
	if len(letters) == 0 {
		return 'z'
	}

	var sum rune
	for _, runeValue := range letters {
		sum += runeValue - 'a' + 1
	}
	return ((sum - 1) % 26) + 'a'
}

func main() {
	fmt.Println(AddLetters([]rune{'a', 'b', 'c'}))
	fmt.Println(AddLetters([]rune{'z'}))
	fmt.Println(AddLetters([]rune{'a', 'b'}))
	fmt.Println(AddLetters([]rune{'c'}))
	fmt.Println(AddLetters([]rune{'z', 'a'}))
	fmt.Println(AddLetters([]rune{'y', 'c', 'b'}))
	fmt.Println(AddLetters([]rune{}))
}
