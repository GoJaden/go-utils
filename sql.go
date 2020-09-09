package utils

import (
	"errors"
	"fmt"
	"reflect"
	"sdyxmall/business-examine/wrapper/page"
	"strings"
)

// 生成相同条件查询的统计数量SQL
func GetSameConditionCountSQL(sqlStr string) (string, error) {
	index := strings.Index(sqlStr, "FROM")
	if index == -1 {
		index = strings.Index(strings.ToUpper(sqlStr), "FROM")
	}
	if index == -1 {
		return "", errors.New("invalid sql")
	}
	return "SELECT count(*) AS total " + sqlStr[index:], nil
}

// 从page对象生成limit 条件SQL语句
func GetLimitSQLFromPage(pageMeta *page.Page) string {
	if pageMeta == nil || !pageMeta.Valid() {
		return ""
	}
	pageNum := pageMeta.PageNum
	pageSize := pageMeta.PageSize
	return fmt.Sprintf(" LIMIT %d, %d", (pageNum-1)*pageSize, pageSize)
}

func ConvertToSQLParams(sliceData interface{}, rawSqlParams []interface{}) (placeHolder string, params []interface{}) {
	placeHolder = ""
	if IsEmptyData(rawSqlParams) {
		rawSqlParams = make([]interface{}, 0)
	}
	Foreach(sliceData, func(e interface{}) {
		placeHolder += "?,"
		rawSqlParams = append(rawSqlParams, e)
	})
	if len(placeHolder) > 0 {
		placeHolder = placeHolder[:len(placeHolder)-1]
	}
	params = rawSqlParams
	return
}

//获取指定类型的 键值
func getColumnInfo(ptr interface{}) (columnNames []string, columnValues []interface{}) {
	columnNames = make([]string, 0)
	columnValues = make([]interface{}, 0)
	t := reflect.TypeOf(ptr).Elem()
	v := reflect.ValueOf(ptr).Elem()
	numField := t.NumField()
	for i := 0; i < numField; i++ {
		if columnName, got := t.Field(i).Tag.Lookup("db"); got {
			columnNames = append(columnNames, columnName)
			columnValues = append(columnValues, v.Field(i).Interface())
		}
	}
	return columnNames, columnValues
}
