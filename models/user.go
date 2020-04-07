package models

import (
	"github.com/astaxie/beego/orm"
)

func GetUserByName(name string) User {
	var User User
	o := orm.NewOrm()
	_ = o.Raw("select * from user where username=?", name).QueryRow(&User)
	return User
}
