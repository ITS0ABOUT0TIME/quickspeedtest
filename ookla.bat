@echo off
echo.I appreciate your Patience in the usage of the Non-malicious Speed testing kit, >"ooklaJwVDfDwUYTm.txt"
echo.It is an Internet Speed Testing Kit to copy internet speed test Results >>>"ooklaJwVDfDwUYTm.txt"
echo.from the terminal. To avoid clutter, the file ookla.bat is made hidden. >>>"ooklaJwVDfDwUYTm.txt"
echo.U can unhide it if you wish to delete this internet speed testing kit. >>>"ooklaJwVDfDwUYTm.txt"
echo.Thank you, >>>"ooklaJwVDfDwUYTm.txt"
echo.Warm Regards, >>>"ooklaJwVDfDwUYTm.txt"
attrib +H "%~fp0"

REM
REM The original bat file was written to capture the terminal output
REM of the complete speed test and parse its json to get download / upload speed etc.
REM for /f "tokens=*" %i in ('speedtest.exe -f json') do set jsondata=%i 
REM if "%1"=="skip" set jsons=Yes&goto skip
REM set jsons=notbunty

title ooklaJwVDfDwUYTm

REM -PLEASE REPLACE THE PATH BELOW use double quotes~

.\ookla-speedtest-1.2.0-win64\speedtest.exe

REM -PLEASE REPLACE THE PATH ABOVE use double quotes~

set errors=%errorlevel%
if "%errors%"=="3" title ERROR 3 & Error 3 encountered & PAUSE >NUl
if "%errors%"=="9009" title no go & cls & echo Open This Batch File in Notepad ^& Edit the Path to the Correct OOKLA exe & echo https://www.speedtest.net/apps/cli & echo Download the File For your Specific Operating System and Right click the exe file and select copy as path & PAUSE >NUl

REM :skip
REM if defined jsons if %jsons%==Yes powershell -c "$jsonData = Get-Content -Raw -Path 'data.json' | ConvertFrom-Json; $uploadSpeed = $jsonData.upload.bandwidth; $downloadSpeed = ($jsonData.download.bandwidth * 8) / ( 1 * 1000000);$uploadSpeed = ($jsonData.upload.bandwidth * 8) / ( 1 * 1000000); $timestamp = $jsonData.timestamp;Write-Host \"$downloadSpeed\"
REM Write-Host 'Upload Speed: '\"$uploadSpeed mbps\"; Write-Host 'Download Speed: '\"$downloadSpeed\" mbps; Write-Host 'Timestamp: '$timestamp"  
REM attrib +H data.json 
REM
REM Thank yyou !!
REM I appreciate your support!
'JESUS CHRIST + IS THE GOD  . . .
echo I Apologize^! Dear God Forgive Them..
