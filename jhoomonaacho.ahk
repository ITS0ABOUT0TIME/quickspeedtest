;RUN quickly; Save PreciousData!

;Data costs money!! and even though u pay for it, it costs the 
;environment which in turn batters the economy.
;Yes these are not all direct costs or effects but rather INDIRECT!!
; This is a personal choice and an ETHOS
; that is not driven by fear or threat or painS
help me god for your god and no one other that i need to wait for ((2>NUL))
; SO Yes, it's choice-driven not driven by pain or fear or threat!

;it Might be a good idea,to adjust the sleep cycles as per your needs!!
;down below

delayaftercommandprompt := 300
delayafterooklabat := 300
delaytocaptureoutput := 300

Run A_ComSpec ' /c "echo off & cls & mode 20,10 & color 4f & echo Starting monitoring..&echo.Will kill task after 5seconds&timeout 5 >NUL&TASKKILL /FI "WINDOWTITLE eq ookla"" '
Sleep delayaftercommandprompt
Run A_ComSpec ' /c "ookla.bat" '
Sleep delayafterooklabat
if WinExist("ookla")
{
WinMaximize
Sleep 500
MouseClick "left", 55, 233
Sleep 300
Send "{space}"
Sleep delaytocaptureoutput
}
x := 0
while x = 0
{
if WinExist("ookla")
{
Sleep 350

Send "^a"
Sleep 300
Send "^c"

Sleep 200
}

if (A_Clipboard ~= " latency: ")
{
x := 1
}
}
if WinExist("ookla")
{
WinClose
}
