Set WshShell = WScript.CreateObject("WScript.Shell")

return = WshShell.Run ("cmd /c slmgr //b /ato" ,0 ,true)
