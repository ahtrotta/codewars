package main

import (
	"fmt"
)

func IsDivisible(n, x, y int) bool {
	return n%x == 0 && n%y == 0
}

func main() {
    fmt.Println(IsDivisible(3, 3, 4))
    fmt.Println(IsDivisible(12, 3, 4))
    fmt.Println(IsDivisible(8, 3, 4))
    fmt.Println(IsDivisible(48, 3, 4))
    fmt.Println(IsDivisible(100, 5, 10))
    fmt.Println(IsDivisible(100, 5, 3))
    fmt.Println(IsDivisible(4, 4, 2))
    fmt.Println(IsDivisible(5, 2, 3))
    fmt.Println(IsDivisible(17, 17, 17))
    fmt.Println(IsDivisible(17, 1, 17))
}
