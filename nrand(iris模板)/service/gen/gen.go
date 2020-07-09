package gen

import "github.com/lhlyu/nrand/controller/dto"

type IGen interface {
	GetPrefix() string
	GetSuffix() string
	GetId() uint
	Handler(req *dto.NameDto) []string
}

func GenFactory(flag uint) IGen {
	switch flag {
	case ChineseManSingle:
		return _chineseManSingle
	case ChineseWomanSingle:
		return _chineseWomanSingle
	case ChineseManCompound:
		return _chineseManCompound
	case ChineseWomanCompound:
		return _chineseWomanCompound
	case JapaneseMan:
		return _japaneseMan
	case JapaneseWoman:
		return _japaneseWoman
	case WestMan:
		return _westMan
	case WestWoman:
		return _westWoman
	case Org:
		return _org
	case Place:
		return _place
	case KongFu:
		return _kongfu
	case Treasure:
		return _treasure
	}
	return nil
}
