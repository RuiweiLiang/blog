package controllers

import (
	"blog/models"
	"encoding/json"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
)

type MainController struct {
	beego.Controller
}

type DetailController struct {
	beego.Controller
}

type MarkDownController struct {
	beego.Controller
}

type JSONS struct {
	Msg  string
	Code string
	Data string
}

func (c *MainController) GetFunc() {
	//c.Data["Website"] = "beego.me"
	//c.Data["Email"] = "astaxie@gmail.com"
	logs.Debug("主页")
	c.TplName = "index2.tpl"
	//dir, _ := os.Getwd()
	//println(dir)
	//beego.SetStaticPath("/static", dir+"/static/html/index.html")
}

func (c *MainController) PostFunc() {
	logs.Debug("POST请求")
	type Params struct {
		Type string
	}
	var RequestParams Params
	var ResJson JSONS
	err := json.Unmarshal(c.Ctx.Input.RequestBody, &RequestParams)
	if err != nil {
		ResJson.Data = "请求类型不是json格式"
		ResJson.Code = "-1"
		ResJson.Msg = "请求失败"
		c.Data["json"] = ResJson
		c.ServeJSON()
	}
	logs.Debug("%+v", RequestParams)
	b, err := json.Marshal(RequestParams)
	ResJson.Data = "nimabi"
	ResJson.Code = "0"
	ResJson.Msg = string(b)
	c.Data["json"] = ResJson
	c.ServeJSON()
}

func (c *DetailController) Get() {
	logs.Debug("详情页面")
	TextId, _ := c.GetInt("id")
	logs.Debug(TextId)
	Message := models.GetTextById(int(TextId))
	c.Data["Title"] = Message.Title
	c.Data["Type"] = Message.Type
	c.Data["Time"] = Message.Time.Format("2006-01-02 15:04")
	c.TplName = "details.tpl"
}

func (c *MarkDownController) MarkDownGetFunc() {
	logs.Debug("新增文章页面")
	c.TplName = "markdown.tpl"
}

func (c *MarkDownController) MarkDownPostFunc() {
	logs.Debug("新增文章")
	logs.Debug("POST请求")
	type Params struct {
		Type   string
		Title  string
		Detail string
	}
	var RequestParams Params
	var ResJson JSONS
	err := json.Unmarshal(c.Ctx.Input.RequestBody, &RequestParams)
	if err != nil {
		ResJson.Data = "请求类型不是json格式"
		ResJson.Code = "-1"
		ResJson.Msg = "请求失败"
		c.Data["json"] = ResJson
		c.ServeJSON()
	}
	logs.Debug("%+v", RequestParams)
	b, err := json.Marshal(RequestParams)
	ResJson.Data = "nimabi"
	ResJson.Code = "0"
	ResJson.Msg = string(b)
	c.Data["json"] = ResJson
	c.ServeJSON()
	c.TplName = "markdown.tpl"
}
