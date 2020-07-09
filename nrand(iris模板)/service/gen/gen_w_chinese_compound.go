package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const ChineseWomanCompound = uint(10003)

type chineseWomanCompound struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _chineseWomanCompound *chineseWomanCompound

func init() {
	prefixs := dict.Dict[dict.CHINESE_PREFIX_TWO]
	suffixs := dict.Dict[dict.CHINESE_WOMAN_SUFFIX]

	_chineseWomanCompound = &chineseWomanCompound{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *chineseWomanCompound) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *chineseWomanCompound) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *chineseWomanCompound) GetId() uint {
	return ChineseWomanCompound
}

func (c *chineseWomanCompound) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
