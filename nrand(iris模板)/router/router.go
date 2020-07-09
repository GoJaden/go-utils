package router

import (
	"github.com/kataras/iris/v12"
	"github.com/lhlyu/nrand/controller"
)

func SetRouter(app *iris.Application) {
	//app.AllowMethods(iris.MethodOptions)
	//
	//ctr := &controller.Controller{}
	//
	//
	//app.Party("/api")

	ctr := &controller.IndexController{}

	app.Post("/name", controller.H(ctr.GenName))

}
