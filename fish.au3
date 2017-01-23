; ----------------------------------------------------------------------------
;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x / NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template AutoIt script.
;
; ----------------------------------------------------------------------------


; ----------------------------------------------------------------------------
; Set up our defaults
; ----------------------------------------------------------------------------

;AutoItSetOption("MustDeclareVars", 1)
;AutoItSetOption("MouseCoordMode", 0)
;AutoItSetOption("PixelCoordMode", 0)
;AutoItSetOption("RunErrorsFatal", 0)
;AutoItSetOption("TrayIconDebug", 1)
;AutoItSetOption("WinTitleMatchMode", 4)


; ----------------------------------------------------------------------------
; Script Start
; ----------------------------------------------------------------------------

$Timer = TimerStart()
AdLibEnable("timers", 500)
$log = "fishlog.txt"
$time1 = @MON & "/" & @MDAY & "/" & @YEAR & "  " & @HOUR & ":" & @MIN & ":" & @SEC
Global $paused = 0
Sleep(60000)
$fish = 1
$dc = 0
$dca = 0
$lost = 0
$small = 0
$rusty = 0
$caught = 0
$monster = 0
$start = 0
WinWaitActive("FFXiApp")

While $fish = 1
AutoItSetOption("SendKeyDelay", 150)
Send("!1")
$event = 0
$catch = 0
$safety = 0
$nobait = 0
$dead = 0
$safety2 = 0

If $start = 1 Then
$time1 = @MON & "/" & @MDAY & "/" & @YEAR & "  " & @HOUR & ":" & @MIN & ":" & @SEC
$dca = 0
$lost = 0
$small = 0
$rusty = 0
$caught = 0
$monster = 0
$start = 0
EndIf

Do
Sleep(250)
$pix1 = PixelGetRGB(22,567)
$pix2 = PixelGetRGB(32,576)
$pix4 = PixelGetRGB(101,573)

If (240 - $pix1[3]) < 61 AND (240 - $pix2[3]) < 61 AND (240 - $pix4[3]) < 61 AND (240 - $pix1[3]) > 5 Then
dc()
EndIf

If PixelGetColor(23,571) = 16777215 AND PixelGetColor(145,574) = 16777215 AND PixelGetColor(239,569) = 16777215 Then
AutoItSetOption("SendKeyDelay", 40)
Sleep(1000)
Send("{ENTER}")
$catch = 1
Sleep(5400)
EndIf

If PixelGetColor(33,576) = 16777215 AND PixelGetColor(91,569) = 16777215 AND PixelGetColor(225,577) = 16777215 Then
Sleep(6300)
$dca = $dca + 1
$event = 1;You didn't catch anything.
EndIf

If PixelGetColor(86,569) = 16777215 AND PixelGetColor(210,571) = 16777215 AND PixelGetColor(320,574) = 16777215 AND PixelGetColor(338,576) = 16777215 Then
Sleep(500)
Send("!2")
Sleep(1000)
$event = 1;You ran out of bait.
EndIf

If PixelGetColor(86,569) = 16777215 AND PixelGetColor(210,571) = 16777215 AND PixelGetColor(320,574) = 16777215 AND PixelGetColor(338,576) = 16777215 AND PixelGetColor(86,537) = 16777215 AND PixelGetColor(210,539) = 16777215 AND PixelGetColor(320,542) = 16777215 AND PixelGetColor(338,544) = 16777215 Then
dc()
$event = 1;You ran completely out of bait.
EndIf

$safety = $safety + 1
If $safety > 174 Then
Send("^5")
Sleep(250)
$event = 1
EndIf

If $catch = 1 Then

If PixelGetColor(59,573) = 16777215 AND PixelGetColor(83,575) = 16777215 AND PixelGetColor(175,572) = 16777215 Then
Sleep(2200)
$lost = $lost + 1
$event = 1;You lost your catch.
EndIf

If PixelGetColor(24,577) = 16777215 AND PixelGetColor(72,577) = 16777215 AND PixelGetColor(511,577) = 16777215 Then
Sleep(2200)
$small = $small + 1
$event = 1;Whatever you caught was too small.
EndIf

If PixelGetColor(21,572) = 16777215 AND PixelGetColor(43,572) = 16777215 AND PixelGetColor(85,571) = 16777215 AND PixelGetColor(215,577) = 16777215 Then
autodump()
$event = 1;You caught some rusty leggings.
EndIf

If PixelGetColor(21,572) = 16777215 AND PixelGetColor(43,572) = 16777215 AND PixelGetColor(85,571) = 16777215 AND PixelGetColor(204,577) = 16777215 Then
autodump()
$event = 1;You caught a rusty bucket.
EndIf

If PixelGetColor(21,572) = 16777215 AND PixelGetColor(43,572) = 16777215 AND PixelGetColor(85,571) = 16777215 AND PixelGetColor(215,577) <> 16777215 Then
autosort()
$event = 1;You caught a fish.
EndIf

If PixelGetColor(26,571) = 16777215 AND PixelGetColor(47,575) = 16777215 AND PixelGetColor(71,573) = 16777215 Then
autosort()
$event = 1;You caught more then one fish.
EndIf

;If PixelGetColor(22,572) = 16777215 AND PixelGetColor(36,573) = 16777215 AND PixelGetColor(68,577) = 16777215 AND PixelGetColor(217,577) = 16777215 Then
;autofight()
;$event = 1;You caught a monster.
;EndIf

EndIf

Until $event = 1

sleep(2000)

WEnd

Func dc()
$fisha = 0
writelog()
Send("!3")
Sleep(30000)
EndFunc

Func autosort()
$caught = $caught + 1
Sleep(8000)
AutoItSetOption("SendKeyDelay", 235)
AutoItSetOption("SendKeyDownDelay", 100)
Send ("!i")
Sleep(250)
Send ("{NUMPADADD}")
Sleep (250)
Send ("{ENTER}")
sleep(350)
Send ( "{UP}" )
sleep(350)
Send ("{ENTER}")
sleep(250)
Send ("{ESCAPE}")
sleep(250)
Send ("{ESCAPE}")
Sleep (250)
EndFunc

Func autodump()
$rusty = $rusty + 1
Sleep(8000)
AutoItSetOption("SendKeyDelay", 235)
AutoItSetOption("SendKeyDownDelay", 100)
Send ("!i")
Sleep(250)
Send ("{RIGHT 6}")
Sleep (250)
Send ("{ENTER}")
sleep(350)
Send ( "{DOWN}" )
sleep(350)
Send ("{ENTER}")
sleep(250);
Send ("{UP}")
sleep(250)
Send ("{ENTER}")
Sleep (250)
Send ("{ESCAPE}")
Sleep (250)
Send ("{ESCAPE}")
Sleep (250)
EndFunc

Func autofight()
$monster = $monster + 1
Sleep(7000)
AutoItSetOption("SendKeyDelay", 500)
AutoItSetOption("SendKeyDownDelay", 300)
Send("{s down}")
Sleep(3000)
Send("{s up}")
Sleep(500)
Send("!4")
Sleep(3000)
Send("!4")
Sleep(5000)
Do
Sleep(250)
$safety2 = $safety2 + 1
If PixelGetColor(22,32) <> 16777215 AND PixelGetColor(77,31) <> 16777215 Then
$dead = 1
EndIf
If $safety2 = 480 Then
Sleep(250)
Send("!5")
EndIf
Until $dead = 1
Sleep(250)
Send("{w down}")
Sleep(4000)
Send("{w up}")
Sleep(250)
;Send("!6")
;Sleep(60000)
;Send("{w 2}")
Sleep(250)
EndFunc

Func writelog()
FileWriteLine($log, $time1 & " - " & @MON & "/" & @MDAY & "/" & @YEAR & "  " & @HOUR & ":" & @MIN & ":" & @SEC)
FileWriteLine($log, "Kept fish/items: " & $caught)
FileWriteLine($log, "Didn't catch anything: " & $dca)
FileWriteLine($log, "Lost your catch: " & $lost)
FileWriteLine($log, "Catch was too small: " & $small)
FileWriteLine($log, "Unwanted rusty items: " & $rusty)
FileWriteLine($log, "Monsters caught: " & $monster)
FIleWriteLine($log, "-------------------------------------------------------")
$start = 1
EndFunc

Func timers()
If TimerStop($Timer) > 3600000 Then
Adlibdisable ()
writelog()
Sleep(30000)
Send("!3")
Send("{ENTER}")
Sleep(35000)
Send("{ENTER}")
Sleep(7000)
Send("{ENTER}")
Sleep(7000)
Send("{ENTER}")
Sleep(7000)
Send("{ENTER}");
Sleep(20000)
$Timer = TimerStart()
AdLibEnable("timers", 500);
EndIf
EndFunc

Func PixelGetRGB($x, $y)
$hex = Hex(PixelGetColor($x, $y), 6)
$r = Dec(StringRight($hex, 2)) & "|"
$g = Dec(StringMid($hex, 3,2)) & "|"
$b = Dec(StringLeft($hex, 2))
Return StringSplit($r & $g & $b, "|")
EndFunc
