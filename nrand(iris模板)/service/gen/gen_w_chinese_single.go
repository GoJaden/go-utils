package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const ChineseWomanSingle = uint(10001)

type chineseWomanSingle struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _chineseWomanSingle *chineseWomanSingle

func init() {
	prefixs := dict.Dict[dict.CHINESE_PREFIX]
	suffixs := dict.Dict[dict.CHINESE_WOMAN_SUFFIX]

	_chineseWomanSingle = &chineseWomanSingle{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *chineseWomanSingle) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *chineseWomanSingle) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *chineseWomanSingle) GetId() uint {
	return ChineseWomanSingle
}

func (c *chineseWomanSingle) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
