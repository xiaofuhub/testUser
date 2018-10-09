$PBExportHeader$w_002.srw
forward
global type w_002 from window
end type
type lv_1 from listview within w_002
end type
type tv_1 from treeview within w_002
end type
end forward

global type w_002 from window
integer width = 3959
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
lv_1 lv_1
tv_1 tv_1
end type
global w_002 w_002

on w_002.create
this.lv_1=create lv_1
this.tv_1=create tv_1
this.Control[]={this.lv_1,&
this.tv_1}
end on

on w_002.destroy
destroy(this.lv_1)
destroy(this.tv_1)
end on

type lv_1 from listview within w_002
integer x = 1938
integer y = 128
integer width = 914
integer height = 1216
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
listviewview view = listviewlist!
string item[] = {"test001","test002","test003","test00"}
integer itempictureindex[] = {1,1,1,2}
long largepicturemaskcolor = 536870912
long smallpicturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

type tv_1 from treeview within w_002
integer x = 183
integer y = 96
integer width = 1170
integer height = 1248
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
boolean haslines = false
boolean linesatroot = true
boolean checkboxes = true
string picturename[] = {"Control DatePicker_2!","Align buttom_2!","Align top_2!"}
long picturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

event constructor;//long ll_lev1, ll_lev2, ll_lev3, ll_lev4
//int index, i
//ll_lev1 = tv_1.InsertItemLast(0, "Composers", 1)
//ll_lev2 = tv_1.InsertItemLast(ll_lev1, "Beethoven", 2)
//ll_lev3 = tv_1.InsertItemLast(ll_lev2, "Symphonies", 3)
//FOR index =1 to 9
//	ll_lev4 = tv_1.InsertItemSort(ll_lev3, "Symphony #" + String(i), 4)
//NEXT

long tv_handle
//定义treeviewitem对象
TreeViewItem tvitem_department
tvitem_department.label="用户类型"//显示的内容
//tvitem_department.Data=dw_department2//内部数值
//tvitem_department.children=true   	//拥有子项目
tv_handle=tv_1.insertitemlast(0,tvitem_department)  //在第一层插入此对象，返回句柄
 
long i
//在父级上添加子项
TreeViewItem tvitem_s1
tvitem_s1.label="会员"
tvitem_s1.children=false
i=tv_1.insertitemlast( tv_handle,tvitem_s1)
 
long j
TreeViewItem tvitem_s2
tvitem_s2.label="普通用户"
tvitem_s2.children=false
j=tv_1.insertitemlast( tv_handle,tvitem_s2)
end event

