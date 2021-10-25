ECHO OFF

cd C:\Users\keith.lee\Desktop\test\hello-world
REM 喔
git add . || goto :error

REM 喔喔
git commit -m "ok" || goto :error

REM 喔喔喔
git push origin main || goto :error

:error
exit /b %errorlevel%
