echo off 
if not exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto huh
 if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto DoYouHave
:DoYouHave
cls
color e
cd C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main
echo.
echo Do u have forge "the newest version"?
set /p yesORno=[Yes/No]:
if %yesORno%==yes goto Minecraft
if %yesORno%==Yes goto Minecraft
cd C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main\Forge
if %yesORno%==no explorer C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main\Forge
if %yesORno%==No explorer C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main\Forge
echo.
pause
:Minecraft
cls
title Installer.Minecraft mod
color B
echo.
echo Its seem u need to download the mod agein... type "Yes" and redownload it agein
echo We see on the mod folder "BiomesOPlenty-1.11-6.0.1.2128-universal.jar" delete it or redownload it.
echo.
echo.
cd C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main
copy /-y "C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main\BiomesOPlenty-1.11-6.0.1.2128-universal installer.jar"  /-y C:\Users\Montaser\AppData\Roaming\.minecraft\mods\BiomesOPlenty-1.11-6.0.1.2128-universal.jar"
echo.
goto Send

:download forge
cls
color e
echo.
echo waiting you to install forge...
pause >null
goto Minecraft
:Send
cls
title Sender
color b
move /-y "C:\Users\Montaser\Desktop\MinecraftInstallerMod 1.11\Main\BiomesOPlenty-1.11-6.0.1.2128-universal.jar" /-y C:\Users\Montaser\AppData\Roaming\.minecraft\mods
if not exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto huh
goto Move

:Move
cls
title Moving
color b
echo.
echo please wait...
cd C:\Users\Montaser\AppData\Roaming\.minecraft\mods
if exist BiomesOPlenty-1.11-6.0.1.2128-universal.jar rename C:\Users\Montaser\AppData\Roaming\.minecraft\mods\BiomesOPlenty-1.11-6.0.1.2128-universal.jar BiomesOPlenty-1.11-6.0.1.2128-universal-(1).jar 
echo.
goto Load1
:Load1
echo.
echo Downloading BiomesOPlenty-1.11 mod...
ping localhost -n 5 >nul
goto Load2
:Load2
echo.
echo Sending to mods folder...
ping localhost -n 2 >nul
goto Load3
:Load3
echo.
echo Geting everything ready...
ping localhost -n 4 >nul

TIMEOUT /T 1
cd C:\Users\%username%\Desktop\MinecraftInstallerMod 1.11\Main
call Succesfully_Reminder.vbs
goto Done

:Done
cls
color 0e
echo.
echo.
echo "Minecraft BiomesOPlenty-1.11-6.0.1.2128-universal.jar Has Been Installed!"
echo.
pause
exit
:huh
cls
echo.
echo.
echo C:\Users\%username%\AppData\Roaming\.minecraft\?
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
echo.
call :colorEcho 0c "Error mods folder not found..."
echo.
echo.
call :colorEcho 0e "Make sure you have mods folder"
call :colorEcho 0e " OR Create Mod Folder [C]"
echo.
echo.
set delBuild=n
set /p delBuild=Retry Agein [y/n/c] ?:
if %delBuild%==y if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto Minecraft 
if %delBuild%==yes if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto Minecraft 
if %delBuild%==Yes if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto Minecraft 
if %delBuild%==Y if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto Minecraft
if %delBuild%==YES if exist C:\Users\Montaser\AppData\Roaming\.minecraft\mods goto Minecraft
if %delBuild%==n exit
if %delBuild%==no exit
if %delBuild%==No exit
if %delBuild%==N exit
if %delBuild%==NO exit
if %delBuild%==C if not exist "C:\Users\Montaser\AppData\Roaming\.minecraft\mods" goto create
if %delBuild%==c if not exist "C:\Users\Montaser\AppData\Roaming\.minecraft\mods" goto create
echo.
goto huh
pause
exit
:create
title creating...
cls
color 0f
echo.
echo Creating "mods" Folder...
echo ---
echo cd: %Userprofile%\AppData\Roaming\.minecraft
ping localhost -n 7 >nul
color 0a
title created!!
cls
echo.
 mkdir C:\Users\%username%\AppData\Roaming\.minecraft\mods
echo Mods folder has been created!
echo.
pause >null
if not exist C:\Users\%username%\AppData\Roaming\.minecraft\mods goto ERROR#
pause
goto DoYouHave
:ERROR#
cls
color 04
title ERROR-STILL NOT FOUND!
echo ERROR# mods file not found // please change minecraft location to > C:\Users\%username%\AppData\Roaming\.minecraft
echo then reOpen the installer. OR send the mods folder to whereEver .minecraft location...
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
