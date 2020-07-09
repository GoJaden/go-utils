package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const ChineseManCompound = uint(10002)

type chineseManCompound struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _chineseManCompound *chineseManCompound

func init() {
	prefixs := dict.Dict[dict.CHINESE_PREFIX_TWO]
	suffixs := dict.Dict[dict.CHINESE_MAN_SUFFIX]

	_chineseManCompound = &chineseManCompound{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *chineseManCompound) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *chineseManCompound) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *chineseManCompound) GetId() uint {
	return ChineseManCompound
}

func (c *chineseManCompound) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
