package main

import (
	"blog/models"
	_ "blog/models"
	_ "blog/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

//引入数据模型
func init() {
	// 注册数据库
	models.RegisterDB()
}

func main() {
	// 日志配置
	logs.SetLogger(logs.AdapterFile, `{"filename":"logs/test.log","level":7,"maxlines":0,"maxsize":0,"daily":true,"maxdays":10,"color":true}`)
	logs.EnableFuncCallDepth(true) // 日志输出行数

	// 开启 ORM 调试模式
	orm.Debug = true
	// 自动建表
	orm.RunSyncdb("default", false, true)
	beego.Run()
}
