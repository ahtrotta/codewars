package main

import (
	"fmt"
)

func DigitalRoot(n int) int {
	if n%10 == n {
		return n
	}

	sum := 0
	for n > 0 {
		digit := n % 10
		sum += digit
		n = n / 10
	}
	return DigitalRoot(sum)
}

func main() {
	fmt.Println(DigitalRoot(6))
	fmt.Println(DigitalRoot(16))
	fmt.Println(DigitalRoot(195))
	fmt.Println(DigitalRoot(992))
	fmt.Println(DigitalRoot(167346))
	fmt.Println(DigitalRoot(0))
}
