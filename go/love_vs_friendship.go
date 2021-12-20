package main

import (
	"fmt"
)

func WordsToMarks(s string) (result int) {
	for _, runeValue := range s {
		result += (int(runeValue-'a') + 1)
	}
	return
}

func main() {
	fmt.Println(WordsToMarks("attitude"))
	fmt.Println(WordsToMarks("friends"))
	fmt.Println(WordsToMarks("family"))
	fmt.Println(WordsToMarks("selfness"))
	fmt.Println(WordsToMarks("knowledge"))
}
