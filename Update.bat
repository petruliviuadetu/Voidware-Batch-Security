@echo off 

:update
cls

del LastVersion.bat
ren "Main.bat" "LastVersion.bat"

set "URL=https://raw.githubusercontent.com/petruliviuadetu/Voidware-Batch-Security/main/Main.bat"
set "DESTINATION=%USERPROFILE%\OneDrive\Desktop\VoidWare-Software-Protection"

:: Attempt to download the file
curl -s -o "%DESTINATION%\Main.bat" "%URL%"
if %errorlevel% neq 0 (
    echo An error occurred during the update.
    goto error
)

:: Rename the file


:Success
cls
echo Hello, Thanks for using Voidware... I've spent so much time coding this
echo The Operation was successful
echo Re open Main.bat for new update to success
pause
exit

:error
echo An error has occurred while updating... Reverting Back.
echo Reverting might cause some critical issues. Reinstall if needed...
echo.
echo Reverting Time: 10 Seconds
timeout /t 10 /nobreak >nul
exit