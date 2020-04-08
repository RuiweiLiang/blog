package models

import (
	"github.com/astaxie/beego/orm"
)

func GetPublicByDate(DataTime string) Public {
	var Public Public
	o := orm.NewOrm()
	_ = o.Raw("select * from public where Datetime=?", DataTime).QueryRow(&Public)
	return Public
}

func AddViews(Views int64, DateTime string) Public {
	var Public Public
	o := orm.NewOrm()
	_ = o.Raw("update public set views=? where datetime=?", Views, DateTime).QueryRow(&Public)
	return Public
}

func InsertPublic(DataTime string) Public {
	var Public Public
	o := orm.NewOrm()
	_ = o.Raw("insert into public values(0,1,?)", DataTime).QueryRow(&Public)

	return Public
}
