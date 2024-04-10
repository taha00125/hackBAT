@echo off
setlocal

curl -o script.js https://raw.githubusercontent.com/user/repository/script.js
echo Running script...
node script.js
timeout /t 5 /nobreak >nul
goto start
