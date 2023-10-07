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
cd C:\
mkdir "Voidware"
echo. > "BL.svoid"
timeout /t 2 /nobreak >nul
echo Setting Up Whitelist . . . 
echo. > "WhitelistMsg.txt"
timeout /t 2 /nobreak >nul
echo Thanks for using Us!
echo Waiting 10 seconds to finish Whitelist Services...
timeout /t 10 /nobreak >nul
goto WhitelistSection


:update
cls
set URL=https://github.com/username/repository/raw/main/filename.extension
set DESTINATION=%userprofile%\Desktop

:: Attempt to download the file
curl -o "%DESTINATION%\filename.extension" %URL%
if %errorlevel% neq 0 (
    echo An error occurred during the update.
    goto error
)

:: If the update was successful, continue to the main section
echo.
echo Successfully updated Voidware. Stay Current for more updates...
timeout /t 5 /nobreak >nul
goto Main

:Main
:: Your main program code goes here

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
echo An error occurred.
pause
exit

:WhitelistSection
IF EXIST C:\Users\euteo Goto Blacklist
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

