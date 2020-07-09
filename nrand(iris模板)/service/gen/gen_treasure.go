package gen

import (
	"fmt"
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service/gen/dict"
	"math/rand"
)

const Treasure = uint(10011)

type treasure struct {
	prefixsLen int
	suffixLen  int
	prefixs    []string
	suffixs    []string
}

var _treasure *treasure

func init() {
	prefixs := dict.Dict[dict.TREASURE_PREFIX]
	suffixs := dict.Dict[dict.TREASURE_SUFFIX]

	_treasure = &treasure{
		prefixsLen: len(prefixs),
		suffixLen:  len(suffixs),
		prefixs:    prefixs,
		suffixs:    suffixs,
	}
}

func (c *treasure) GetPrefix() string {
	return c.prefixs[rand.Intn(c.prefixsLen)]
}

func (c *treasure) GetSuffix() string {
	return c.suffixs[rand.Intn(c.suffixLen)]
}

func (c *treasure) GetId() uint {
	return Treasure
}

func (c *treasure) Handler(req *dto.NameDto) []string {
	var names []string
	for i := uint(0); i < req.Number; i++ {
		names = append(names, fmt.Sprintf("%s%s", getPrefix(c, req.Prefix), getSuffix(c, req.Suffix)))
	}
	return names
}
