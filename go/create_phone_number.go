package main

import (
	"fmt"
	"strings"
)

func CreatePhoneNumber(numbers [10]uint) string {
	numStrings := make([]string, 10)
	for i, num := range numbers {
		numStrings[i] = fmt.Sprintf("%d", num)
	}

	areaCode := strings.Join(numStrings[0:3], "")
	nextThree := strings.Join(numStrings[3:6], "")
	lastFour := strings.Join(numStrings[6:10], "")
	return fmt.Sprintf("(%s) %s-%s", areaCode, nextThree, lastFour)
}

func main() {
	fmt.Println(CreatePhoneNumber([10]uint{1, 2, 3, 4, 5, 6, 7, 8, 9, 0}))
}
