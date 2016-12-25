echo off 
title Installer.Minecraft mod
color B
echo.
echo Uninstall Biomes O Plenty-1.11 mod [Yes or No] 
echo.
set /p Uninstall=       :
echo.
if %Uninstall%==Yes goto Del-1
if %Uninstall%==yes goto Del-1
if %Uninstall%==No exit
if %Uninstall%==no exit
pause 
:Del-1
cls
del "C:\Users\Montaser\AppData\Roaming\.minecraft\mods\BiomesOPlenty-1.11-6.0.1.2128-universal-(1).jar"
if not exist "C:\Users\Montaser\AppData\Roaming\.minecraft\mods\BiomesOPlenty-1.11-6.0.1.2128-universal-(1).jar" del "C:\Users\Montaser\AppData\Roaming\.minecraft\mods\BiomesOPlenty-1.11-6.0.1.2128-universal.jar"
goto Load0
:Load0
cls
color 4
echo.
echo please wait...
echo.
echo.
echo Uninstalling BiomesOPlenty-1.11-6.0.1.2128-universal.jar
ping localhost -n 7 >nul
goto Deleting
:Deleting
cls
color C
echo.
echo.
echo BiomesOPlenty-1.11-6.0.1.2128-universal.jar Has Successfully Deleted.
echo.
pause
exit
