package main

import (
	"fmt"
)

func Hero(bullets, dragons int) bool {
	return (dragons * 2) <= bullets
}

func main() {
	fmt.Println(Hero(10, 5))
	fmt.Println(Hero(7, 4))
	fmt.Println(Hero(4, 5))
	fmt.Println(Hero(100, 40))
	fmt.Println(Hero(1500, 751))
	fmt.Println(Hero(0, 1))
}
