package sorter

import (
	"sort"
	"strings"
)

type ArrayStringSorter interface {
	Sort(values []string) []string
}

type PriceRangeArrayStringSorter struct {
}

func (p *PriceRangeArrayStringSorter) Sort(values []string) []string {
	sort.SliceStable(values, func(i, j int) bool {
		iVal, jVal := values[i], values[j]
		iNums, jNums := numbersFromString(iVal), numbersFromString(jVal)
		iNumsLen, jNumsLen := len(iNums), len(jNums)

		// 都不包含数字, 比较字符串
		if iNumsLen == 0 && jNumsLen == 0 {
			return strings.Compare(iVal, jVal) < 0
		}

		// 有一个不包含数字, 包含数字的优先
		if iNumsLen == 0 || jNumsLen == 0 {
			return iNumsLen > jNumsLen
		}

		// 第一个数字不相等, 数字小的优先
		if iNums[0] != jNums[0] {
			return iNums[0] < jNums[0]
		}

		// 第一个数字相等且长度不同并不是1, 包含数字少的优先
		if iNumsLen != jNumsLen && iNumsLen+jNumsLen > 2 {
			return iNumsLen < jNumsLen
		}

		// 第一个数字相等相等且长度不同, 第二个数字小的优先
		if iNums[1] != jNums[1] {
			return iNums[1] < jNums[1]
		}

		// 否则比较字符串
		return strings.Compare(iVal, jVal) < 0
	})
	return values
}

type CommonArrayStringSorter struct {
}

func (s *CommonArrayStringSorter) Sort(values []string) []string {
	sort.SliceStable(values, func(i, j int) bool {
		return strings.Compare(values[i], values[j]) < 0
	})
	return values
}
