package main

import (
	"fmt"
)

func inviteMoreWomen(L []int) bool {
	counts := make(map[string]int)
	for _, value := range L {
		if value == 1 {
			counts["men"] += 1
		} else {
			counts["women"] += 1
		}
	}
	return counts["men"] > counts["women"]
}

func main() {
	fmt.Println(inviteMoreWomen([]int{1, -1, 1}))
	fmt.Println(inviteMoreWomen([]int{1, 1, 1}))
	fmt.Println(inviteMoreWomen([]int{-1, -1, -1}))
	fmt.Println(inviteMoreWomen([]int{1, -1}))
}
