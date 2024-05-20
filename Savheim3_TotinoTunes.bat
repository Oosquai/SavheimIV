:: Savheim III script for pulling updates from git and then launching the game.
:: You can create a shortcut to this on your desktop, but do not rely on dragging a direct copy of this, else you'll miss updates to this script.

:: The "cd" line below assumes you used the default install location for Valheim from Steam.  Update as needed if you used a different install location, or if you're a goatman.
cd C:\Program Files (x86)\Steam\steamapps\common\Valheim

:: The following lines, and their counterparts below git pull, preserve some local settings for you, like if you moved some GUI frames around in-game or adjusted coordinates for 3440x1440 resolutions, etc.
::cd BepInEx\config
::if exist Azumatt.AzuExtendedPlayerInventory.cfg move /y Azumatt.AzuExtendedPlayerInventory.cfg Azumatt.AzuExtendedPlayerInventory_SAVHEIM_TEMP.cfg
::if exist Azumatt.BowsBeforeHoes.cfg move /y Azumatt.BowsBeforeHoes.cfg Azumatt.BowsBeforeHoes_SAVHEIM_TEMP.cfg
::if exist Azumatt.FastLink.cfg move /y Azumatt.FastLink.cfg Azumatt.FastLink_SAVHEIM_TEMP.cfg
::if exist org.bepinex.plugins.darwinawards.cfg move /y org.bepinex.plugins.darwinawards.cfg org.bepinex.plugins.darwinawards_SAVHEIM_TEMP.cfg
::if exist org.bepinex.plugins.groups.cfg move /y org.bepinex.plugins.groups.cfg org.bepinex.plugins.groups_SAVHEIM_TEMP.cfg
::cd ..\..

:: Pull all the latest Savheim III files.
git reset --hard origin/main
git pull

:: Replace the pulled files with temp files if they were created
::cd BepInEx\config
::if exist Azumatt.AzuExtendedPlayerInventory_SAVHEIM_TEMP.cfg move /y Azumatt.AzuExtendedPlayerInventory_SAVHEIM_TEMP.cfg Azumatt.AzuExtendedPlayerInventory.cfg
::if exist Azumatt.BowsBeforeHoes_SAVHEIM_TEMP.cfg move /y Azumatt.BowsBeforeHoes_SAVHEIM_TEMP.cfg Azumatt.BowsBeforeHoes.cfg
::if exist Azumatt.FastLink_SAVHEIM_TEMP.cfg move /y Azumatt.FastLink_SAVHEIM_TEMP.cfg Azumatt.FastLink.cfg
::if exist org.bepinex.plugins.darwinawards_SAVHEIM_TEMP.cfg move /y org.bepinex.plugins.darwinawards_SAVHEIM_TEMP.cfg org.bepinex.plugins.darwinawards.cfg
::if exist org.bepinex.plugins.groups_SAVHEIM_TEMP.cfg move /y org.bepinex.plugins.groups_SAVHEIM_TEMP.cfg org.bepinex.plugins.groups.cfg
::cd ..\..

:: Plays background music as the game is loading
cd sound
start cmd.exe /C music_randomizer.bat
cd ..

:: Launch the game and close the console used for this script.  Have fun!
start valheim.exe
exit