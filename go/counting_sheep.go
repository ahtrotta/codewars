package main

import (
	"fmt"
)

func CountSheeps(numbers []bool) (sheeps int) {
	for _, sheep := range numbers {
		if sheep {
			sheeps += 1
		}
	}
	return
}

func main() {
	rr1 := []bool{
      true,  true,  true,  false,
      true,  true,  true,  true ,
      true,  false, true,  false,
      true,  false, false, true ,
      true,  true,  true,  true ,
      false, false, true,  true,
    }
	fmt.Println(CountSheeps(rr1))
}
