package dto

type NameDto struct {
	Target uint   `json:"target"`
	Number uint   `json:"number"`
	Length uint   `json:"length"`
	Prefix string `json:"prefix"`
	Suffix string `json:"suffix"`
}
