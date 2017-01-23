Global $tawg

HotKeySet("{NumLock}", "togg")

;AutoItSetOption("MustDeclareVars", 1)
;AutoItSetOption("MouseCoordMode", 0)
;AutoItSetOption("PixelCoordMode", 0)
;AutoItSetOption("RunErrorsFatal", 0)
;AutoItSetOption("TrayIconDebug", 1)
;AutoItSetOption("WinTitleMatchMode", 4)
$Timer = TimerStart()

$tawg = 0
$timez = 0

Sleep(6000)
AutoItSetOption("SendKeyDelay", 200)
AutoItSetOption("SendKeyDownDelay", 20)

while 1=1

While $tawg = 1




Send("{LCTRL}")   ;F12 key
Sleep(330)




wend
Sleep(5000)
wend


Func togg()


if $tawg = 1 then
$tawg = 0
Send("{LCTRL}")
else
$tawg = 1
Send("")
endif

EndFunc
