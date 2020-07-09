package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const JapaneseWoman = uint(10005)

type japaneseWoman struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _japaneseWoman *japaneseWoman

func init() {
	prefixs := dict.Dict[dict.JAPANESE_PREFIX]
	suffixs := dict.Dict[dict.JAPANESE_WOMAN_SUFFIX]

	_japaneseWoman = &japaneseWoman{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *japaneseWoman) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *japaneseWoman) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *japaneseWoman) GetId() uint {
	return JapaneseWoman
}

func (c *japaneseWoman) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
