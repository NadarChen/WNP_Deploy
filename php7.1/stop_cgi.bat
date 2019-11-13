@echo off
echo Stopping PHP FastCGI...
taskkill /F /IM xxfpm.exe > nul
TIMEOUT 3