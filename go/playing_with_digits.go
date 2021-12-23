package main

import (
	"fmt"
	"math"
	"strconv"
)

func sumDigPow(n, p int) int {
	pFloat := float64(p)
	nStr := strconv.Itoa(n)
	sum := 0.0
	for i, digStr := range nStr {
		digit, _ := strconv.Atoi(string(digStr))
		sum += math.Pow(float64(digit), pFloat+float64(i))
	}

	return int(sum)
}

func DigPow(n, p int) int {
	sum := sumDigPow(n, p)
	if sum%n == 0 {
		return sum / n
	}
	return -1
}

func main() {
	fmt.Println(DigPow(89, 1))
	fmt.Println(DigPow(92, 1))
	fmt.Println(DigPow(695, 2))
	fmt.Println(DigPow(46288, 3))
}
