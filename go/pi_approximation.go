package main

import (
	"fmt"
	"math"
)

func IterPi(epsilon float64) (int, string) {
	current := 0.0
	denom := 1.0
	iter := 0
	neg := false
	for {
		frac := float64(1) / denom
		if neg {
			frac *= -1
		}
		current = current + frac
		iter++
		if math.Abs(current*4.0-math.Pi) <= epsilon {
			break
		}
		neg = !neg
		denom += 2
	}
	return iter, fmt.Sprintf("%.10f", current*4.0)
}

func main() {
	fmt.Println(IterPi(0.1))
	fmt.Println(IterPi(0.01))
	fmt.Println(IterPi(0.001))
	fmt.Println(IterPi(0.0001))
	fmt.Println(IterPi(0.00001))
	fmt.Println(IterPi(0.000001))
	fmt.Println(IterPi(0.05))
}
