Global $tawg

HotKeySet("v", "togg")

;AutoItSetOption("MustDeclareVars", 1)
;AutoItSetOption("MouseCoordMode", 0)
;AutoItSetOption("PixelCoordMode", 0)
;AutoItSetOption("RunErrorsFatal", 0)
;AutoItSetOption("TrayIconDebug", 1)
;AutoItSetOption("WinTitleMatchMode", 4)
$Timer = TimerStart()

$stop = 0


Sleep(2000)
AutoItSetOption("SendKeyDelay", 5)
AutoItSetOption("SendKeyDownDelay", 5)



while 1 = 1

while ($stop = 1)

Send("{tab}")   ;tab key for opening spell
Sleep(2200)  ; sleep 1.8 seconds
if $stop = 0 then 
exitloop
endif
Send("{tab}")   ;tab for the second volley
Sleep(2300)  ; sleep 1.8 seconds
if $stop = 0 then 
exitloop
endif
send("2") ; send 2 for the dot
sleep(1700);
if $stop = 0 then 
exitloop
endif
send("f") ; bearform time bitches!
sleep(500);
if $stop = 0 then 
exitloop
endif
send("1"); auto attack

$stop = 0 ; kinda sloppy format, what i shoulda done was put the above code in the function and set... idk lol
wend

sleep(100)

wend


Func togg()
if $stop = 1 then
$stop = 0
else
$stop = 1
endif
EndFunc