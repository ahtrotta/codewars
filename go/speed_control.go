package main

import (
	"fmt"
	"math"
)

func Gps(s int, x []float64) int {
	if len(x) <= 1 {
		return 0
	}

	max := 0.0
	for i := 1; i < len(x); i++ {
		speed := (3600 * (x[i] - x[i-1])) / float64(s)
		if speed > max {
			max = speed
		}
	}

	return int(math.Floor(max))
}

func main() {
	var x = []float64{0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61}
	var s = 20
	fmt.Println(Gps(s, x))
	x = []float64{0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25}
	s = 12
	fmt.Println(Gps(s, x))
}
