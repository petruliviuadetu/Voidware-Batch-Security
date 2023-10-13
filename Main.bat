@echo off
:: Program Security: Voidware
title Voidware
echo (TEST)
set /p bang2="Option: (1: Skip Installation | 2: Start the Installation (Recommanded) ): "
if "%bang2%"=="1" goto Main
if "%bang2%"=="2" goto FullCreate

:LocalInstall
:: Try the update section
echo New Update Might be here (IGNORE)
mkdir "Voidware"
echo Extracting . . .
timeout /t 2 /nobreak >nul
echo Installing Features . . .
cd Voidware
echo. > "WB.fvoid"
timeout /t 2 /nobreak >nul
echo Installing Services . . .
mkdir "C:\Users\%username%\Voidware"
curl -o "C:\Users\%username%\Voidware\BlacklistCode.bat" "https://raw.githubusercontent.com/petruliviuadetu/Voidware-Batch-Security/main/BlacklistCode.bat"
echo. > "BL.svoid"
timeout /t 2 /nobreak >nul
echo Setting Up Whitelist . . . 
echo. > "WhitelistMsg.txt"
timeout /t 2 /nobreak >nul
echo Thanks for using Us!
echo Waiting 5 seconds to finish Whitelist Services...
timeout /t 5 /nobreak >nul
goto Main


:FullCreate
:: Create the destination directory if it doesn't exist
mkdir "%USERPROFILE%\Desktop\VoidWare-Software-Protection"
mkdir "%USERPROFILE%\Desktop\VoidWare-Software-Protection\Voidware"
mkdir "%USERPROFILE%\OneDrive\Desktop\VoidWare-Software-Protection"
mkdir "%USERPROFILE%\OneDrive\Desktop\VoidWare-Software-Protection\Voidware"
goto LocalInstall

:: Rest of your script...

:update
cls
::del "%userprofile%\Desktop\VoidWare-Software-Protection\Main.bat"
::del "%userprofile%\OneDrive\Desktop\VoidWare-Software-Protection\Main.bat"
call Update.bat


:: If the update was successful, continue to the main section
echo.
echo Successfully updated Voidware. Stay Current for more updates...
timeout /t 5 /nobreak >nul
goto WhitelistSection

:Main

cls
echo Voidware Security Settings
echo -----------------------------------------
echo Note: This is still beta version so reporting bugs will help me much
echo -----------------------------------------
echo 1. Finish Setup
echo 2. Update
echo 3. Uninstall
set /p bang=Option (1/2/3): 
if "%bang%"=="1" goto Finish
if "%bang%"=="2" goto Update
if "%bang%"=="3" goto Undo

:Finish
cd Voidware
set "sourceFile=C:\Users\%username%\Voidware\BlacklistCode.bat"
set "destinationDirectory=%userprofile%\Desktop\VoidWare-Software-Protection\Voidware"

:: Clone (copy) the file
copy "%sourceFile%" "%destinationDirectory%"

:: Rename the copied file (optional)
ren "%destinationDirectory%\BlacklistCode.bat" "Code.bat"

:: Move the copied file to the desired directory
move "%destinationDirectory%\Code.bat" "%userprofile%\Desktop\VoidWare-Software-Protection\Voidware"
timeout /t 2 /nobreak >nul
move "%destinationDirectory%\Code.bat" "%userprofile%\OneDrive\Desktop\VoidWare-Software-Protection\Voidware"
goto FinishMsg

:FinishMsg
echo.
echo Setup has finished . . . 
echo The file will be located in Voidware and then edit it. the main function will be where your script goes...
pause
cls
goto Main

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
if exist C:\Users\%username%\Voidware\VW.vw goto Blacklist

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
