:: Savheim IV script for pulling updates from git and then launching the game.
:: You can create a shortcut to this on your desktop, but do not rely on dragging a direct copy of this, else you'll miss updates to this script.

:: The "cd" line below assumes you used the default install location for Valheim from Steam.  Update as needed if you used a different install location, or if you're a goatman.
cd C:\Program Files (x86)\Steam\steamapps\common\Valheim

:: Plays background music as the game is loading
::cd sound
::start cmd.exe /C music_randomizer.bat
::cd ..

:: Pull all the latest Savheim files.
git reset --hard origin/main
start /wait git pull

timeout /T 1 /nobreak

:: Launch the game and close the console used for this script.  Have fun!
start valheim.exe
exit