$PBExportHeader$w_001.srw
forward
global type w_001 from window
end type
type sle_1 from singlelineedit within w_001
end type
type vtb_1 from vtrackbar within w_001
end type
type htb_1 from htrackbar within w_001
end type
type cb_1 from commandbutton within w_001
end type
end forward

global type w_001 from window
integer width = 3959
integer height = 2152
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_1 sle_1
vtb_1 vtb_1
htb_1 htb_1
cb_1 cb_1
end type
global w_001 w_001

on w_001.create
this.sle_1=create sle_1
this.vtb_1=create vtb_1
this.htb_1=create htb_1
this.cb_1=create cb_1
this.Control[]={this.sle_1,&
this.vtb_1,&
this.htb_1,&
this.cb_1}
end on

on w_001.destroy
destroy(this.sle_1)
destroy(this.vtb_1)
destroy(this.htb_1)
destroy(this.cb_1)
end on

type sle_1 from singlelineedit within w_001
integer x = 1463
integer y = 512
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type vtb_1 from vtrackbar within w_001
integer x = 2597
integer y = 288
integer width = 146
integer height = 1056
integer maxposition = 100
integer tickfrequency = 10
end type

type htb_1 from htrackbar within w_001
integer x = 329
integer y = 896
integer width = 1719
integer height = 128
integer maxposition = 100
integer tickfrequency = 10
end type

event rbuttondown;htb_1.setskindraw(false,true);
end event

event moved;//htb_1.setskindraw(false,true);
end event

type cb_1 from commandbutton within w_001
integer x = 366
integer y = 448
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

