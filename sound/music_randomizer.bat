@echo off
@for /f "tokens=*" %%i in ('powershell -Command "(1..100 | Get-Random)"') do @(
        set "rand=%%i"
    )

::echo %rand%
echo TotinoTunes(tm) is now picking random epic music for you while your game loads!

if %rand% LEQ 30 (playmp3.bat Wind-Rose_Diggy-Diggy-Hole_A2.mp3) else (
if %rand% LEQ 40 (playmp3.bat TSFH_Flameheart_A1.mp3) else (
if %rand% LEQ 50 (playmp3.bat TSFH_Black-Blade_A2.mp3) else (
if %rand% LEQ 60 (playmp3.bat TSFH_Tyrianis_A2.mp3) else (
if %rand% LEQ 70 (playmp3.bat TSFH_Dragon-Rider_A1.mp3) else (
if %rand% LEQ 80 (playmp3.bat TSFH_Magika_A1.mp3) else (
if %rand% LEQ 90 (playmp3.bat rage-sound_vortex_A2.mp3) else (
				  playmp3.bat Intro_A2.mp3) ) ) ) ) ) )


REM playmp3.bat Wind-Rose_Diggy-Diggy-Hole_A2.mp3

REM playmp3.bat TSFH_Flameheart_A1.mp3

REM playmp3.bat Intro_A2.mp3

REM playmp3.bat TSFH_Tyrianis_A2.mp3

REM playmp3.bat TSFH_Dragon-Rider_A1.mp3

REM playmp3.bat TSFH_Black-Blade_A2.mp3

REM playmp3.bat rage-sound_vortex_A2.mp3

REM playmp3.bat TSFH_Magika_A1.mp3

exit