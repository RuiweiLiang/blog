package models

import (
	"github.com/astaxie/beego/orm"
)

func GetTextById(id int) Text {
	var Text Text
	o := orm.NewOrm()
	_ = o.Raw("select * from text where id=?", id).QueryRow(&Text)
	return Text
}
