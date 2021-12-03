package main

import (
	"fmt"
)

func MaxMultiple(d, b int) int {
	for i := b; i >= 1; i-- {
		if i % d == 0 {
			return i
		}
	}
	return -1
}

func main() {
    fmt.Println(MaxMultiple(2, 7))
    fmt.Println(MaxMultiple(3, 10))
    fmt.Println(MaxMultiple(7, 17))
    fmt.Println(MaxMultiple(10, 50))
    fmt.Println(MaxMultiple(37, 200))
    fmt.Println(MaxMultiple(7, 100))
}
