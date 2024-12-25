@echo off
color 02
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    runas /user:Administrator "%0"
    exit /b
)

set "windows=%windir%"
set "systemdrive=%systemdrive%"
set "userprofile=%userprofile%"
set "temp=%temp%"
set "history=%userprofile%\Local Settings\History"
set "cookies=%userprofile%\Cookies"
set "recent=%userprofile%\Recent"
set "printers=%systemroot%\system32\spool\printers"
color 03
del /s /f /q "%windows%\temp\*.*" 2>nul
color 04
del /s /f /q "%windows%\Prefetch\*.exe" 2>nul
color 05
del /s /f /q "%windows%\Prefetch\*.dll" 2>nul
color 02
del /s /f /q "%windows%\Prefetch\*.pf" 2>nul
color 03
del /s /f /q "%windows%\system32\dllcache\*.*" 2>nul
color 04
del /s /f /q "%systemdrive%\Temp\*.*" 2>nul
color 05
del /s /f /q "%temp%\*.*" 2>nul
color 02
del /s /f /q "%history%\*.*" 2>nul
color 03
del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 2>nul
color 04
del /s /f /q "%userprofile%\Local Settings\Temp\*.*" 2>nul
color 05
del /s /f /q "%recent%\*.*" 2>nul
color 02
del /s /f /q "%cookies%\*.*" 2>nul
color 03
@echo All Temp/Extra Files were cleared!
timeout 2 >nul
exit