@echo off
:: Program Security: Voidware
title Voidware

:: Try the update section
mkdir "Voidware"
echo Extracting . . .
timeout /t 2 /nobreak >nul
echo Installing Features . . .
cd Voidware
echo. > "WB.fvoid"
timeout /t 2 /nobreak >nul
echo Installing Services . . .
mkdir "C:\Users\%username%\Voidware"
echo. > "BL.svoid"
timeout /t 2 /nobreak >nul
echo Setting Up Whitelist . . . 
echo. > "WhitelistMsg.txt"
timeout /t 2 /nobreak >nul
echo Thanks for using Us!
echo Waiting 5 seconds to finish Whitelist Services...
timeout /t 5 /nobreak >nul
goto FullCreate


:FullCreate
:: Create the destination directory if it doesn't exist
mkdir "%USERPROFILE%\Desktop\VoidWare-Software-Protection"
mkdir "%USERPROFILE%\Desktop\VoidWare-Software-Protection\Voidware"
mkdir "%USERPROFILE%\OneDrive\Desktop\VoidWare-Software-Protection"
mkdir "%USERPROFILE%\OneDrive\Desktop\VoidWare-Software-Protection\Voidware"
goto update

:: Rest of your script...

:update
cls
del "%userprofile%\Desktop\VoidWare-Software-Protection\Main.bat"
set "URL=https://raw.githubusercontent.com/petruliviuadetu/Voidware-Batch-Security/main/Main.bat"
set "DESTINATION=%userprofile%\Desktop\VoidWare-Software-Protection"

:: Attempt to download the file
start /wait curl -s -o "%DESTINATION%\Main.bat" "%URL%"
if %errorlevel% neq 0 (
    echo An error occurred during the update.
    goto error
)


:: If the update was successful, continue to the main section
echo.
echo Successfully updated Voidware. Stay Current for more updates...
echo Update Test Msg
timeout /t 5 /nobreak >nul
goto WhitelistSection

:Main

cls
echo Voidware Security Settings
echo -----------------------------------------
echo 1. Finish Setup
echo 2. Update
echo 3. Uninstall
set /p bang= Option(1/2/3): 
if "bang"=="1" goto Finish
if "bang"=="2" goto Update
if "bang"=="3" goto Undo
pause
exit

:Finish
cd Voidware


:Undo
cls
echo.
echo Uninstalling Voidware. Please tell us how we should improve. Improvement text can be made in issues
echo Waiting 10 seconds to save whitelist...
timeout /t 10 /nobreak >nul
start https://github.com/petruliviuadetu/Voidware-Batch-Security/blob/main/README.md
del Voidware

:error
cls
:: Error handling code goes here
echo An error occurred while a operator was almost done...
echo Reason: Updating Error or Any other errors
pause
exit

:WhitelistSection
if exist C:\Voidware\VW.vw goto Blacklist

goto Main

:Blacklist 
cd 
cls
echo.
echo Voidware Security Message
echo.
echo You have been blocked from Voidware Installation.
echo.
echo Reason: Malformed Data or Blacklisted
echo.
echo Fix: Email the owner of this program that you have been blocked by a reason. This might fix ur problem!
pause 
exit

