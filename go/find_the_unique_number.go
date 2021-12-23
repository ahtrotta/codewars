package main

import (
	"fmt"
)

func FindUniq(arr []float32) float32 {
	m := make(map[float32]int)
	for i, num := range arr {
		m[num]++
		if m[num] == 1 && i > 1 {
			return num
		} else if m[num] == 2 && i > 1 {
			for k, _ := range m {
				if k != num {
					return k
				}
			}
		}
	}
	return -1
}

func main() {
	fmt.Println(FindUniq([]float32{1.0, 1.0, 1.0, 2.0, 1.0, 1.0}))
	fmt.Println(FindUniq([]float32{0, 0, 0.55, 0, 0}))
	fmt.Println(FindUniq([]float32{0.1, 0, 0, 0, 0}))
}
