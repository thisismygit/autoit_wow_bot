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


Sleep(6000)
AutoItSetOption("SendKeyDelay", 150)

while 1=1

While $tawg = 1

$loopzor = 0
Do

if $tawg = 1 then
Send("!1")   ;carby111 and release
Sleep(13000)
endif

if $tawg = 1 then
Send("!2")   ;ice or something
Sleep(12000)
endif

if $tawg = 1 then
Send("!2")   ;ice or something
Sleep(12000)
endif

$loopzor = $loopzor + 1
Until $loopzor = 5

if $tawg = 1 then
Send("!4")   ;heal on
Sleep(150000)
Send("!7")
Sleep(20)
Send("!7")   ;heal off
Sleep(2000)
endif
wend

Sleep(2000)
wend

Func togg()


if $tawg = 1 then
$tawg = 0
Send("!5") 
else
$tawg = 1
Send("!6") 
endif

EndFunc
