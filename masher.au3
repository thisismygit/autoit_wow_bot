Global $tawg

HotKeySet("{NumLock}", "togg")

;AutoItSetOption("MustDeclareVars", 1)
;AutoItSetOption("MouseCoordMode", 0)
;AutoItSetOption("PixelCoordMode", 0)
;AutoItSetOption("RunErrorsFatal", 0)
;AutoItSetOption("TrayIconDebug", 1)
;AutoItSetOption("WinTitleMatchMode", 4)
$Timer = TimerStart()

$stop = 1


Sleep(2000)
AutoItSetOption("SendKeyDelay", 5)
AutoItSetOption("SendKeyDownDelay", 5)

while 1 = 1

While $stop = 1


Send("{DOWN}")   ;F12 key
Sleep(5)


wend
wend


Func togg()


if $stop = 1 then
$stop = 0
 
else
$stop = 1

endif

EndFunc