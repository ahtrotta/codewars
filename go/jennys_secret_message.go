package main

import (
	"fmt"
)

func Greet(name string) string {
	switch name {
	case "Johnny":
		return "Hello, my love!"
	default:
		return "Hello, " + name + "!"
	}
}

func main() {
	fmt.Println(Greet("Alfred"))
	fmt.Println(Greet("Johnny"))
}
