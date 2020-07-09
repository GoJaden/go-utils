package counter

type TaskCounter struct {
	TotalNum   int
	SuccessNum int
	FailedNum  int
}

func NewTaskCounter(total int) *TaskCounter {
	return &TaskCounter{
		TotalNum: total,
	}
}

func (t *TaskCounter) AddTotal(total int) *TaskCounter {
	t.TotalNum = t.TotalNum + total
	return t
}

func (t *TaskCounter) Record(succeed bool) *TaskCounter {
	if succeed {
		t.SuccessNum += 1
	} else {
		t.FailedNum += 1
	}
	return t
}
