#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Res_Comment=Spam Bot
#AutoIt3Wrapper_Res_Description=Spam Bot
#AutoIt3Wrapper_Res_Fileversion=0.1
#AutoIt3Wrapper_Res_Language=1031
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.10.2
 Author:         Duell10111

 Script Function:
	Spam

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
HotKeySet("{NUMPAD1}", "Start")
HotKeySet("{NUMPAD2}", "_Exit")
HotKeySet("{NUMPAD3}", "_Exit2")

$text = "Das ist Spam"

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=c:\users\konsti\skydrive\dokumente\spam.kxf
$Spam = GUICreate("Spam", 615, 437, 188, 136)
$Input1 = GUICtrlCreateInput("Text", 256, 152, 121, 21)
$Spamtext = GUICtrlCreateLabel("Spamtext", 288, 128, 48, 17)
$Num = GUICtrlCreateLabel("Num 1 Ist Spam start", 176, 224, 102, 17)
$Label1 = GUICtrlCreateLabel("Num 2 Stop Spam ", 168, 248, 93, 17)
$Label2 = GUICtrlCreateLabel("Num 3 Programm beenden", 168, 304, 130, 17)
$Button1 = GUICtrlCreateButton("Aktualiesieren", 392, 152, 91, 25)
$Label3 = GUICtrlCreateLabel("Duell10111", 528, 384, 58, 17)
$Label4 = GUICtrlCreateLabel("Version 0.1", 528, 408, 57, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			$text = GUICtrlRead($Input1)
	EndSwitch
$1 = 0

WEnd


Func Start()

	While 1
		Send($text)
		Send("{ENTER}")

If $1 = 1 Then
	ExitLoop
	_1()
EndIf
WEnd
EndFunc
Func _1()
	$1 = 0
EndFunc

Func _Exit()
	$1 = 1
EndFunc

Func _Exit2()
	Exit
EndFunc