package main

import (
	"fmt"
	"strconv"
	"strings"
)

func rotateSlice(n []string) []string {
	return append(n[1:], n[0])
}

func getRotations(n []string) [][]string {
	rots := make([][]string, len(n))
	rots[0], rots[1] = n, rotateSlice(n)

	for i := 2; i < len(n); i++ {
		toRotate := rots[i-1]
		toRotateCopy := make([]string, len(toRotate))
		copy(toRotateCopy, toRotate)
		constant := toRotateCopy[:i-1]
		rotated := rotateSlice(toRotateCopy[i-1:])
		rots[i] = append(constant, rotated...)
	}

	return rots
}

func largestRotation(rots [][]string) (max int64) {
	for _, slice := range rots {
		numStr := strings.Join(slice, "")
		num, _ := strconv.Atoi(numStr)
		currentNum := int64(num)
		if currentNum > max {
			max = currentNum
		}
	}
	return
}

func MaxRot(n int64) int64 {
	numStr := strconv.Itoa(int(n))
	if len(numStr) == 1 {
		return n
	}

	strSlice := strings.Split(numStr, "")
	return largestRotation(getRotations(strSlice))
}

func main() {
	fmt.Println(MaxRot(56789) == 68957)
	fmt.Println(MaxRot(1) == 1)
	fmt.Println(MaxRot(38458215) == 85821534)
	fmt.Println(MaxRot(195881031) == 988103115)
	fmt.Println(MaxRot(896219342) == 962193428)
}
