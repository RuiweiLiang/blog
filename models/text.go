package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

func InsertText(title string, detail string, text_type string) Text {
	var Text Text
	o := orm.NewOrm()
	_ = o.Raw("insert into text values(0,?,?,?,?,?)", title, detail, time.Now(), text_type, "0").QueryRow(&Text)

	return Text
}

func GetTextById(TextId int) Text {
	var Text Text
	o := orm.NewOrm()
	_ = o.Raw("select * from text where id=?", TextId).QueryRow(&Text)
	return Text
}
