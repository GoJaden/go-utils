package utils

import (
	"bytes"
	"encoding/base64"
	"encoding/json"
	"github.com/pborman/uuid"
	"log"
	"runtime"
	"strings"
)

/**
常用轮子
*/

// 对象转json字符串
func ToJson(v interface{}) string {
	bts, err := json.Marshal(v)
	if err != nil {
		log.Println("ToJson:", err.Error())
		return ""
	}
	return string(bts)
}

// json字符串转对象
func JsonToObj(s string, v interface{}) error {
	return json.Unmarshal([]byte(s), v)
}

// 将字符串base64编码
func Base64(data string) string {
	bytes := []byte(data)
	result := base64.StdEncoding.EncodeToString(bytes)
	return result
}

// 获取唯一的字符串,可以用来生成traceId
func GetGID() string {
	b := make([]byte, 64)
	b = b[:runtime.Stack(b, false)]
	b = bytes.TrimPrefix(b, []byte("goroutine "))
	b = b[:bytes.IndexByte(b, ' ')]
	uid := uuid.New()
	ns := strings.Split(uid, "-")[4] + string(b)
	return ns
}
