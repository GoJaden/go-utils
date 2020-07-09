package sorter

import (
	"regexp"
	"strconv"
)

var patternNumber = regexp.MustCompile("\\d+")

func numbersFromString(inputStr string) []int {
	result := make([]int, 0)
	matches := patternNumber.FindAllStringSubmatch(inputStr, -1)
	for _, subs := range matches {
		numStr := subs[0]
		num, _ := strconv.Atoi(numStr)
		result = append(result, num)
	}
	return result
}
