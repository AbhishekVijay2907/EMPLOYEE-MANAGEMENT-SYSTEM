@echo off
REM Create the MySQL database and employee table from setup.sql
cd /d "%~dp0"
if exist "%MYSQL_HOME%\bin\mysql.exe" (
  "%MYSQL_HOME%\bin\mysql.exe" -u root -pAyushVish < setup.sql
) else (
  mysql -u root -pAyushVish < setup.sql
)
if errorlevel 1 (
  echo Database setup failed. Make sure MySQL is installed and in PATH.
) else (
  echo Database setup completed.
)
pause
