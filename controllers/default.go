package controllers

import (
	"blog/models"
	"encoding/json"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	"strconv"
	"time"
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
	logs.Debug("主页")
	NowData := time.Now().Format("2006-01-02")
	PublicMessage := models.GetPublicByDate(NowData)
	if PublicMessage.Views > 0 {
		c.Data["Views"] = PublicMessage.Views + 1
		PublicMessage = models.AddViews(PublicMessage.Views+1, NowData)
	} else {
		c.Data["Views"] = 1
		models.InsertPublic(NowData)
	}

	GoMessage, PythonMessage := models.GetTextByStatus()
	c.Data["Total"] = strconv.Itoa(len(GoMessage) + len(PythonMessage))
	c.Data["TotalGo"] = strconv.Itoa(len(GoMessage))
	c.Data["TotalPython"] = len(PythonMessage)
	c.TplName = "index2.tpl"
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

func (c *DetailController) DetailGetFunc() {
	logs.Debug("详情页面")
	TextId, _ := c.GetInt("id")
	logs.Debug(TextId)
	Message := models.GetTextById(int(TextId))
	c.Data["Title"] = Message.Title
	c.Data["Type"] = Message.Type
	Message2 := models.GetTextByType(Message.Type)
	c.Data["Detail"] = Message.Detail
	c.Data["Id"] = Message.Id
	c.Data["Time"] = Message.Time.Format("2006-01-02 15:04")
	c.Data["Sort"] = Message2
	c.TplName = "details.tpl"
}

func (c *DetailController) DetailPostFunc() {
	logs.Debug("搜索文章列表")
	type Params struct {
		Type    string
		Page    int
		PerPage int
	}
	var RequestParams Params
	type ResJsonType struct {
		Data string
		Code string
		Msg  []orm.Params
	}
	var ResJson ResJsonType
	err := json.Unmarshal(c.Ctx.Input.RequestBody, &RequestParams)
	if err != nil {
		ResJson.Data = "请求类型不是json格式"
		ResJson.Code = "-1"
		c.Data["json"] = ResJson
		c.ServeJSON()
	}
	TextMessage := models.GetTextByPage(RequestParams.Page, RequestParams.PerPage, RequestParams.Type)
	logs.Debug("列表数据%+v", TextMessage)
	ResJson.Code = "0"
	ResJson.Msg = TextMessage
	ResJson.Data = "请求成功"
	c.Data["json"] = ResJson
	c.ServeJSON()
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
		Name   string
		Pwd    string
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
	userMessage := models.GetUserByName(RequestParams.Name)
	logs.Debug(userMessage.Id)
	if userMessage.Password != RequestParams.Pwd {
		ResJson.Code = "-1"
		ResJson.Msg = "没有此用户或密码错误"
		c.Data["json"] = ResJson
		c.ServeJSON()
	} else {
		models.InsertText(RequestParams.Title, RequestParams.Detail, RequestParams.Type)

		ResJson.Code = "0"
		ResJson.Msg = "新增成功"
		c.Data["json"] = ResJson
		c.ServeJSON()
	}
}
