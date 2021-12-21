package main

import (
	"fmt"
	"math"
)

func SumCubes(n int) (sum int) {
	for i := 1; i <= n; i++ {
		sum += int(math.Pow(float64(i), 3.0))
	}
	return
}

func main() {
	fmt.Println(SumCubes(1))
	fmt.Println(SumCubes(2))
	fmt.Println(SumCubes(3))
	fmt.Println(SumCubes(4))
	fmt.Println(SumCubes(10))
	fmt.Println(SumCubes(123))
}
