package main

import "fmt"

func NoSpace(word string) (result string) {
	for _, char := range word {
		if string(char) != " " {
			result += string(char)
		}
	}

	return
}

func main() {
    fmt.Println(NoSpace("8 j 8   mBliB8g  imjB8B8  jl  B"))
    fmt.Println(NoSpace("8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd"))
    fmt.Println(NoSpace("8aaaaa dddd r     "))
    fmt.Println(NoSpace("jfBm  gk lf8hg  88lbe8 "))
    fmt.Println(NoSpace("8j aam"))
}
