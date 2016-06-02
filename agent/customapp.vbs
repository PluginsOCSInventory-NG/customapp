'Author: Valentin DEVILLE

path = "C:\Users\Gilles\Documents\custom.txt"

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile (path, 1)

text = file.ReadAll

file.Close


Wscript.Echo "<CUSTOMAPP>"
Wscript.Echo "<PATH>" & path & "</PATH>"
Wscript.Echo "<TEXT>" & text & "</TEXT>"
Wscript.Echo "</CUSTOMAPP>"