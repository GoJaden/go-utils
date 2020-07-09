package gen

import "github.com/lhlyu/nrand/controller/dto"

func Handler(g IGen, req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, getPrefix(g, req.Prefix)+getWord(g, req.Suffix, req.Length, g.GetSuffix))
	}
	return names
}

func getPrefix(g IGen, prefix string) string {
	if prefix == "" {
		return g.GetPrefix()
	}
	return prefix
}

func getSuffix(g IGen, suffix string) string {
	if suffix == "" {
		return g.GetSuffix()
	}
	return suffix
}

func getWord(g IGen, fix string, length uint, fn func() string) string {
	if fix == "" {
		s := ""
		for j := uint(0); j < length; j++ {
			s += fn()
		}
		return s
	}
	fixLen := len([]rune(fix))
	if fixLen >= int(length) {
		return fix
	}
	fixLen = int(length) - fixLen
	s := ""
	for j := 0; j < fixLen; j++ {
		s += fn()
	}
	return s + fix
}
