#SingleInstance, force
/*
this shit is what the gui will have, aka champion dropdown and atkspd display
*/
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

/*
this shit is for holding c down
*/
^C::
send, {Space}
While, getkeystate("C", "P")
{
    send a
    Sleep, 500
}
send, {Space}
return

/*
this shit is to terminate the script when you press the x on the gui
*/
GuiClose:
Gui, cancel
MsgBox You will never do better than this
ExitApp
return
^x::ExitApp
