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

func GetTextByStatus() ([]orm.Params, []orm.Params) {
	var mapsGo []orm.Params
	var mapsPython []orm.Params
	o := orm.NewOrm()
	_, _ = o.Raw("select title from text where status=0 and type='GO'").Values(&mapsGo)
	_, _ = o.Raw("select title from text where status=0 and type='Python'").Values(&mapsPython)
	return mapsGo, mapsPython
}

func GetTextByType(Status string) []orm.Params {
	var mapsType []orm.Params
	o := orm.NewOrm()
	_, _ = o.Raw("select id from text where status=0 and type=?", Status).Values(&mapsType)
	return mapsType
}

func GetTextByPage(Page int, PerPage int, TextType string) []orm.Params {
	var MapText []orm.Params
	o := orm.NewOrm()
	Start := (Page - 1) * PerPage
	End := Page * PerPage
	_, _ = o.Raw("select * from text where type=? and status=0 limit ?,?", TextType, Start, End).Values(&MapText)
	return MapText
}
