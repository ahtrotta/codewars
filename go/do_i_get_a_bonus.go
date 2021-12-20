package main

import (
	"fmt"
	"strconv"
)

func BonusTime(salary int, bonus bool) string {
	if bonus {
		salary *= 10
	}
	return "\u00A3" + strconv.Itoa(salary)
}

func main() {
	fmt.Println(BonusTime(100, false))
	fmt.Println(BonusTime(9, false))
	fmt.Println(BonusTime(55000, false))
	fmt.Println(BonusTime(100, true))
	fmt.Println(BonusTime(14000, true))
}
