@echo off
REM Compile Java sources for Employee Management System
cd /d "%~dp0"
if not exist lib\jcalendar-1.4.jar (
  echo Missing required jar: lib\jcalendar-1.4.jar
  pause
  exit /b 1
)
if not exist lib\mysql-connector-java-8.0.28.jar (
  echo Missing required jar: lib\mysql-connector-java-8.0.28.jar
  pause
  exit /b 1
)
if not exist out mkdir out
javac -d out -cp "lib\jcalendar-1.4.jar;lib\mysql-connector-java-8.0.28.jar" src\**\*.java
if errorlevel 1 (
  echo Compilation failed.
) else (
  echo Compilation succeeded.
)
pause
