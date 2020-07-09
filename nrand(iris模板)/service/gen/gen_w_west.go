package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const WestWoman = uint(10007)

type westWoman struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _westWoman *westWoman

func init() {
	prefixs := dict.Dict[dict.WEST_PREFIX]
	suffixs := dict.Dict[dict.WEST_WOWAN_SUFFIX]

	_westWoman = &westWoman{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *westWoman) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *westWoman) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *westWoman) GetId() uint {
	return WestWoman
}

func (c *westWoman) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s·%s", getSuffix(c, req.Suffix), getPrefix(c, req.Prefix)))
	}
	return names
}
