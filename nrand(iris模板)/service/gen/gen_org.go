package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const Org = uint(10008)

type org struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _org *org

func init() {
	prefixs := dict.Dict[dict.WORD]
	suffixs := dict.Dict[dict.ORG_SUFFIX]

	_org = &org{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *org) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *org) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *org) GetId() uint {
	return Org
}

func (c *org) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s%s", getWord(c, req.Prefix, req.Length, c.GetPrefix), getSuffix(c, req.Suffix)))
	}
	return names
}
