@echo off
@for /f "tokens=*" %%i in ('powershell -Command "(1..100 | Get-Random)"') do @(
        set "rand=%%i"
    )

::echo %rand%
echo TotinoTunes(tm) is now picking random epic music for you while your game loads!

if %rand% LEQ 18 (playmp3.bat TSFH_Tyrianis_adj.mp3) else (
if %rand% LEQ 36 (playmp3.bat TSFH_Flameheart_adj.mp3) else (
if %rand% LEQ 54 (playmp3.bat TSFH_Black-Blade_adj.mp3) else (
if %rand% LEQ 72 (playmp3.bat rage-sound_vortex_adj.mp3) else (
if %rand% LEQ 90 (playmp3.bat timur-haisyn_brutal-fervour_adj.mp3) else (
				  playmp3.bat Wind-Rose_Diggy-Diggy-Hole_adj.mp3) ) ) ) )
exit