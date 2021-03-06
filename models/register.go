package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type User struct {
	Id       int64
	Username string
	Password string
}

type Text struct {
	Id     int64
	Title  string
	Status string // 0:正常 1:删除
	Detail string
	Time   time.Time
	Type   string // "GO" "Python"
}

type Public struct {
	Id       int64
	Views    int64  // 访问量
	Datetime string // 日期
}

func RegisterDB() {
	//注册 model
	orm.RegisterModel(new(User), new(Text), new(Public))
	//注册驱动
	orm.RegisterDriver("mysql", orm.DRMySQL)
	//注册默认数据库
	orm.RegisterDataBase("default", "mysql", "root:$root1234@tcp(106.12.122.128:3306)/blog?charset=utf8") //密码为空格式
}
