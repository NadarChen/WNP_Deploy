@ECHO OFF

CD "C:\dev\nginx1.12"

tasklist /FI "IMAGENAME eq nginx.exe" | find /I "nginx.exe" > NUL && (
    GOTO STOP
) || (
    GOTO START
)

:START
REM Windows 下无效
REM set PHP_FCGI_CHILDREN=5
REM 每个进程处理的最大请求数，或设置为 Windows 环境变量
set PHP_FCGI_MAX_REQUESTS=1000
ECHO Starting Nginx...
start nginx
ECHO Starting PHP FastCGI... 
cd C:\dev\php7.1
RunHiddenConsole C:\dev\xxfpm-master\bin\xxfpm.exe "C:\dev\php7.1\php-cgi.exe -c C:\dev\php7.1\php.ini" -n 3 -i 127.0.0.1 -p 9000
GOTO DONE

:STOP
ECHO Stopping Nginx...
start nginx -s quit
ECHO Stopping PHP FastCGI...
taskkill /F /IM xxfpm.exe > nul

:DONE
TIMEOUT 3