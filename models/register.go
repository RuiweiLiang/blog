package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type User struct {
	Id  int64
	Username string
	Password string
}

type Text struct {
	Id  int64
	Title string
	Detail string
	Time time.Time
	Type string   // "GO" "Python"
}

func RegisterDB() {
	//注册 model
	orm.RegisterModel(new(User), new(Text))
	//注册驱动
	orm.RegisterDriver("mysql", orm.DRMySQL)
	//注册默认数据库
	orm.RegisterDataBase("default", "mysql", "root:$root1234@tcp(106.12.122.128:3306)/blog?charset=utf8")//密码为空格式
}

func GetTextById(id int) Text {
	var Text Text
	o:=orm.NewOrm()
	_ = o.Raw("select * from text where id=?", id).QueryRow(&Text)
	return Text
}