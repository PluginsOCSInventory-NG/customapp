'----------------------------------------------------------
' Plugin for OCS Inventory NG 2.x
' Script :		
' Version :		1.00
' Date :		
' Author :		Valentin DEVILLE
'----------------------------------------------------------
' OS checked [X] on	32b	64b	(Professionnal edition)
'	Windows XP		[ ]
'	Windows Vista	[ ]	[ ]
'	Windows 7		[ ]	[ ]
'	Windows 8.1		[ ]	[ ]
'	Windows 10		[ ]	[ ]
'	Windows 2k8R2		[ ]
'	Windows 2k12R2		[ ]
'	Windows 2k16		[ ]
' ---------------------------------------------------------
' NOTE : No checked on Windows 8
' ---------------------------------------------------------
On Error Resume Next

path = "C:\Users\Gilles\Documents\custom.txt"

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile (path, 1)

text = file.ReadAll

file.Close


Wscript.Echo _
    "<CUSTOMAPP>" & VbCrLf &_
    "<PATH>" & path & "</PATH>" & VbCrLf &_
    "<TEXT>" & text & "</TEXT>" & VbCrLf &_
    "</CUSTOMAPP>"
