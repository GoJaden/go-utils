package utils

import (
	dingtalk_robot "common-lib/dingtalk-robot"
	"fmt"
	"sdyxmall/business-examine/common"
)

//无上下文 钉钉
//此处err 最好用用于记录上下文,以便于定位问题位置
func SendDingDingMsg(title, content string, err error) {
	if err != nil {
		content += fmt.Sprintf("\n错误:%+v", err)
	}
	_ = dingtalk_robot.SendMsg(common.Cfg.GetString("env"),
		fmt.Sprintf("%s.%s", common.Cfg.GetString("name"), common.Cfg.GetString("nameSpace")),
		title,
		content,
		"1",
		"")
}
