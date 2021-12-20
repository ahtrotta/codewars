package main

import (
	"fmt"
)

func GetGrade(a, b, c int) rune {
	average := float64(a+b+c) / 3.0
	if average >= 90 {
		return 'A'
	} else if average >= 80 {
		return 'B'
	} else if average >= 70 {
		return 'C'
	} else if average >= 60 {
		return 'D'
	} else {
		return 'F'
	}
}

func main() {
	testA := [...][3]int{{95, 90, 93}, {100, 85, 96}, {92, 93, 94}}
	for _, v := range testA {
		fmt.Println(GetGrade(v[0], v[1], v[2]))
	}
	testB := [...][3]int{{70, 70, 100}, {82, 85, 87}, {84, 79, 85}, {89, 89, 90}}
	for _, v := range testB {
		fmt.Println(GetGrade(v[0], v[1], v[2]))
	}
	testC := [...][3]int{{70, 70, 70}, {75, 70, 79}, {60, 82, 76}}
	for _, v := range testC {
		fmt.Println(GetGrade(v[0], v[1], v[2]))
	}
	testD := [...][3]int{{65, 70, 59}, {66, 62, 68}, {58, 62, 70}}
	for _, v := range testD {
		fmt.Println(GetGrade(v[0], v[1], v[2]))
	}
	testF := [...][3]int{{44, 55, 52}, {48, 55, 52}, {58, 59, 60}}
	for _, v := range testF {
		fmt.Println(GetGrade(v[0], v[1], v[2]))
	}
}
