package controller

import (
	"github.com/lhlyu/nrand/controller/dto"
	"github.com/lhlyu/nrand/service"
)

type IndexController struct {
}

// http://localhost:8080/index?name=tom&age=12
func (c *IndexController) GenName(ctx *Context) {
	req := &dto.NameDto{}
	if !ctx.GetParams(req, false) {
		return
	}
	svc := service.NewIndexService(ctx.GetTracker())
	ctx.JSON(svc.GenName(req))
}
