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
Sleep(2700)  ; sleep 1.8 seconds
if $stop = 1 then
exitloop
endif  ; if you hit numlock you've canceled the casting and the key sending will stop

send("2") ; send 2 for the casting time dot dot
sleep(1800);
if $stop = 1 then
exitloop
endif


send("5") ; send five for the dot
sleep(1200);
if $stop = 1 then
exitloop
endif

send("4") ; send four for the dot
sleep(1100);
if $stop = 1 then
exitloop
endif

send("3") ; send five for the dot
sleep(1100); line 49
if $stop = 1 then
exitloop
endif

send("6") ; cast fear
sleep(800);
if $stop = 1 then
exitloop
endif


 
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