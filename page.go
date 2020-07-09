package utils

type Page struct {
	PageNum  int `json:"pageNum"`
	PageSize int `json:"pageSize"`
	Total    int `json:"total"`
}
type Limter struct {
	Offset   int
	PageSize int
}

func (p *Page) ConvertToLimterArgs() Limter {
	if p == nil || p.PageNum == 0 || p.PageSize == 0 {
		return Limter{
			Offset:   0,
			PageSize: -1,
		}
	}
	return Limter{
		Offset:   (p.PageNum - 1) * p.PageSize,
		PageSize: p.PageSize,
	}

}

//数组构建分页,是否超出了数据下标
func ArrPage(pageNum, pageSize, totalCount int) (int, int, bool) {
	totalPage := 0
	if totalCount%pageSize == 0 {
		totalPage = totalCount / pageSize
	} else {
		totalPage = totalCount/pageSize + 1
	}
	if pageNum > totalPage {
		return 0, 0, false
	}
	if pageNum < 1 {
		pageNum = 1
	}

	startIndex := (pageNum - 1) * pageSize
	endIndex := startIndex + pageSize

	if endIndex >= totalCount {
		endIndex = totalCount
	}

	return startIndex, endIndex, true
}
