'Author: Valentin DEVILLE

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
