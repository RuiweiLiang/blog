package routers

import (
	"bolg/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{},"get:GetFunc;post:PostFunc")
	beego.Router("/detail", &controllers.DetailController{})
}
