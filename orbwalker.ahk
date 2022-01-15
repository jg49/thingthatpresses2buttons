#SingleInstance, force

Gui, Font, s12 cWhite, verdana
guicontrol, font, myedit
Gui, Margin, 10, 10
Gui, +AlwaysOnTop
Gui, Color, black
Gui, Show, x0 y0 w300 h150, `t
Gui, Add, Text, xm ym w55 left, Champion:
Gui, Add, DropDownList, x+5 ym , Kog'Maw|Twitch|Master Yi
Gui, Add, Text, xm y+20 w90 left , Attack Speed:
return

^C::
send, {Space}
While, getkeystate("C", "P")
{
    send a
    Sleep, 500
}
send, {Space}
return

GuiClose:
Gui, cancel
MsgBox You will never do better than this
return
^x::ExitApp