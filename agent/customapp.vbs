'----------------------------------------------------------
' Plugin for OCS Inventory NG 2.x
' Script :		Retrieve content of specific file
' Version :		1.01
' Date :		20/01/2018
' Author :		Valentin DEVILLE
'----------------------------------------------------------
' OS checked [X] on	32b	64b	(Professionnal edition)
'	Windows XP		[ ]
'	Windows Vista	[X]	[X]
'	Windows 7		[X]	[X]
'	Windows 8.1		[X]	[X]	
'	Windows 10		[X]	[X]
'	Windows 2k8R2		[ ]
'	Windows 2k12R2		[ ]
'	Windows 2k16		[ ]
' ---------------------------------------------------------
' NOTE : No checked on Windows 8
' ---------------------------------------------------------
On Error Resume Next

' Replace the path between quotes with your target file
path = "C:\xxx\custom.txt"

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile (path, 1)

text = file.ReadAll

file.Close


Wscript.Echo _
    "<CUSTOMAPP>" & VbCrLf &_
    "<PATH>" & path & "</PATH>" & VbCrLf &_
    "<TEXT>" & text & "</TEXT>" & VbCrLf &_
    "</CUSTOMAPP>"
