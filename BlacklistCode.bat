@echo off
cls

:check1
if exist "C:\Voidware\VW.vw" goto Blacklist

:main
:: Code here
:: Do not modify the scripts!!! 
::only place here the code

echo Hi



pause
exit

:Blacklist
cls
echo.
echo Voidware Security Message
echo.
echo You have been blocked from Voidware.
echo.
echo Reason: Malformed Data or Blacklisted
echo.
echo To resolve this issue, please email the owner of this program explaining the reason for your block. This may help resolve your problem.
pause
exit
