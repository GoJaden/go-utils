package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const KongFu = uint(10010)

type kongfu struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _kongfu *kongfu

func init() {
	prefixs := dict.Dict[dict.KONGFU_PREFIX]
	suffixs := dict.Dict[dict.KONGFU_SUFFIX]

	_kongfu = &kongfu{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *kongfu) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *kongfu) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *kongfu) GetId() uint {
	return KongFu
}

func (c *kongfu) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s%s", getPrefix(c, req.Prefix), getSuffix(c, req.Suffix)))
	}
	return names
}
