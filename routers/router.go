package routers

import (
	"blog/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{}, "get:GetFunc;post:PostFunc")
	beego.Router("/detail", &controllers.DetailController{})
	beego.Router("/markdown", &controllers.MarkDownController{}, "get:MarkDownGetFunc;post:MarkDownPostFunc")
}
