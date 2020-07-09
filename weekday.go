package utils

import (
	"common-lib/json-util"
	"encoding/json"
	"time"
)

// 星期日数组 => JSON字符串
func SerializeWeekDays(weekdays []time.Weekday) string {
	if weekdays == nil {
		return jsonutil.ObjectToJsonString([]time.Weekday{})
	}
	return jsonutil.ObjectToJsonString(weekdays)
}

// JSON字符串 => 星期日数组
func UnSerializeWeekDays(weekDaysJSON string) ([]time.Weekday, error) {
	if len(weekDaysJSON) == 0 {
		return []time.Weekday{}, nil
	}
	var result []time.Weekday
	return result, json.Unmarshal([]byte(weekDaysJSON), &result)
}
