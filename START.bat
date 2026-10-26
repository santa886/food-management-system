@echo off
title CraveBite
cd /d "%~dp0"
findstr /c:"your_mysql_workbench_password" backend\.env >nul 2>&1
if %errorlevel%==0 (
  set /p PW=Enter your MySQL Workbench root password: 
  powershell -NoProfile -Command "(Get-Content backend\.env) -replace 'your_mysql_workbench_password', $env:PW | Set-Content backend\.env"
)
if not exist backend\node_modules call npm run setup
if not exist frontend\dist call npm run build
start "" cmd /c "timeout /t 5 >nul & start http://localhost:5000"
call npm start
pause
