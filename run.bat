@echo off
REM Run the Employee Management System application
cd /d "%~dp0"
java -cp "out;src;lib\jcalendar-1.4.jar;lib\mysql-connector-java-8.0.28.jar" employee.management.system.Main_class
pause
