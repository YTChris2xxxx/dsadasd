@echo off
mode 80,20
:menu
CLS
Color 0f
echo. [96mCreated by YTChris2x[0m
echo ===============================================================================
:menu
echo.  Press 1 -  DISABLE EXPLORER (AFTER LAUNCHING GAME)
echo.  Press 2 -  ENABLE EXPLORER (AFTER GAMING SESSION IS DONE)
echo                 **DO NOT CLOSE OUT OF THIS WINDOW**
echo ===============================================================================
set /p userinp= ^> Enter Your Option: 
if [%userinp%]==[] echo.&echo Invalid User Input&echo.&pause&goto :menu
if %userinp% gtr 2 echo.&echo Invalid User Selection&echo.&pause&goto :menu
if %userinp%==1 goto :opt1
if %userinp%==2 goto :opt2

:opt1
taskkill /IM explorer.exe /F
goto :menu

:opt2
start "1" "explorer"
goto :menu