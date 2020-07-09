package utils

import (
	"common-lib/entity"
	"github.com/pkg/errors"
	"sdyxmall/business-examine/errcode"
)

func ParseToError(err *entity.ErrCode) error {
	if err.Err != nil {
		return err.Err
	}
	return errors.New(err.Msg)
}

// 统一返回给前台的空数据状态码
func UnifyNotExistError(err *entity.ErrCode) *entity.ErrCode {
	if err == nil {
		return nil
	}
	if err.Code == errcode.DATA_NOT_EXIST.Code {
		return errcode.EMPTY_DATA.ReplaceMsg(err.Msg)
	}
	return err
}
