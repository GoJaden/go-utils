package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const WestMan = uint(10006)

type westMan struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _westMan *westMan

func init() {
	prefixs := dict.Dict[dict.WEST_PREFIX]
	suffixs := dict.Dict[dict.WEST_MAN_SUFFIX]

	_westMan = &westMan{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *westMan) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *westMan) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *westMan) GetId() uint {
	return WestMan
}

func (c *westMan) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s·%s", getSuffix(c, req.Suffix), getPrefix(c, req.Prefix)))
	}
	return names
}
