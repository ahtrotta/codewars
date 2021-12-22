package main

import (
	"fmt"
)

func FindOutlier(integers []int) int {
	m := make(map[string][]int)
	for _, integer := range integers {
		if integer%2 == 0 {
			m["even"] = append(m["even"], integer)
		} else {
			m["odd"] = append(m["odd"], integer)
		}

		if len(m["odd"]) > 1 && len(m["even"]) == 1 {
			return m["even"][0]
		} else if len(m["odd"]) == 1 && len(m["even"]) > 1 {
			return m["odd"][0]
		}
	}
	return 0
}

func main() {
	fmt.Println(FindOutlier([]int{2, 6, 8, -10, 3}))
	fmt.Println(FindOutlier([]int{206847684, 1056521, 7, 17, 1901, 21104421, 7, 1, 35521, 1, 7781}))
}
