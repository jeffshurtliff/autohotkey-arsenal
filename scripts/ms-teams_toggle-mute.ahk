;   Script Name:            ms-teams_toggle-mute.ahk
;   Description:            Toggles the microphone mute in Microsoft Teams and then returns focus to original active window
;   Application:            Microsoft Teams
;   Shortcut / Hotkey:      Win + Shift + A 

#+a::
WinGetTitle, window, A                  ; capture the identity of the active window as a variable
if WinExist("ahk_exe Teams.exe")
{
  WinActivate, ahk_exe Teams.exe
  Send, ^+m
  WinActivate, %window%
}
else
{
  MsgBox, Could not find Microsoft Teams
}
return
