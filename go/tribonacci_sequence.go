package main

import (
	"fmt"
)

func Tribonacci(signature [3]float64, n int) []float64 {
	result := make([]float64, n)
	copy(result, signature[:])
	for i := 3; i < n; i++ {
		result[i] = result[i-3] + result[i-2] + result[i-1]
	}
	return result
}

func main() {
	fmt.Println(Tribonacci([3]float64{1, 1, 1}, 10))
	fmt.Println(Tribonacci([3]float64{0, 0, 1}, 10))
	fmt.Println(Tribonacci([3]float64{0, 1, 1}, 10))
	fmt.Println(Tribonacci([3]float64{1, 0, 0}, 10))
	fmt.Println(Tribonacci([3]float64{0, 0, 0}, 10))
	fmt.Println(Tribonacci([3]float64{1, 2, 3}, 10))
	fmt.Println(Tribonacci([3]float64{3, 2, 1}, 10))
	fmt.Println(Tribonacci([3]float64{1, 1, 1}, 1))
	fmt.Println(Tribonacci([3]float64{300, 200, 100}, 0))
	fmt.Println(Tribonacci([3]float64{0.5, 0.5, 0.5}, 30))
}
