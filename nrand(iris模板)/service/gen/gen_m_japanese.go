package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const JapaneseMan = uint(10004)

type japaneseMan struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _japaneseMan *japaneseMan

func init() {
	prefixs := dict.Dict[dict.JAPANESE_PREFIX]
	suffixs := dict.Dict[dict.JAPANESE_MAN_SUFFIX]

	_japaneseMan = &japaneseMan{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *japaneseMan) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *japaneseMan) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *japaneseMan) GetId() uint {
	return JapaneseMan
}

func (c *japaneseMan) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
