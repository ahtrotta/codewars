package main

import (
	"fmt"
	"strconv"
	"strings"
)

func CountBits(n uint) int {
	binary := strconv.FormatInt(int64(n), 2)
	return len(strings.ReplaceAll(binary, "0", ""))
}

func main() {
	fmt.Println(CountBits(0))
	fmt.Println(CountBits(4))
	fmt.Println(CountBits(7))
	fmt.Println(CountBits(9))
	fmt.Println(CountBits(10))
}
