package gen

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const ChineseManSingle = uint(10000)

type chineseManSingle struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _chineseManSingle *chineseManSingle

func init() {
	prefixs := dict.Dict[dict.CHINESE_PREFIX]
	suffixs := dict.Dict[dict.CHINESE_MAN_SUFFIX]

	_chineseManSingle = &chineseManSingle{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *chineseManSingle) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *chineseManSingle) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *chineseManSingle) GetId() uint {
	return ChineseManSingle
}

func (c *chineseManSingle) Handler(req *dto.NameDto) []string {
	return Handler(c, req)
}
