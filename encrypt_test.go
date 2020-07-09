package utils

import (
	"encoding/json"
	"strconv"
	"testing"
	"time"
)

func TestEncryptToMD5(t *testing.T) {
	inputData := map[string]string{
		"uid":       "11",
		"token":     "ZDA0Y2M1NDhlNmI0MzAwNzAyOGQzYzQ5MzJhYTY3YjM=",
		"year":      "2019",
		"month":     "9",
		"timestamp": strconv.Itoa(int(time.Now().Unix())),
		"unitcode":  "275",
	}
	bytes, _ := json.Marshal(inputData)
	t.Log(EncryptToMD5(bytes))
	t.Log(string(bytes))
}
