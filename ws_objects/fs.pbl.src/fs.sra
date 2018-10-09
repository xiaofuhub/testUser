$PBExportHeader$fs.sra
$PBExportComments$Generated Application Object
forward
global type fs from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type fs from application
string appname = "fs"
end type
global fs fs

on fs.create
appname="fs"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on fs.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//open(w_001)
open(w_002)
end event

