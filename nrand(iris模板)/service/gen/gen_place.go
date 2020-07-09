package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const Place = uint(10009)

type place struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _place *place

func init() {
	prefixs := dict.Dict[dict.WORD]
	suffixs := dict.Dict[dict.PLACE_SUFFIX]

	_place = &place{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *place) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *place) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *place) GetId() uint {
	return Place
}

func (c *place) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s%s", getWord(c, req.Prefix, req.Length, c.GetPrefix), getSuffix(c, req.Suffix)))
	}
	return names
}
