
cd C:\Users\keith.lee\Desktop\test\hello-world
REM 喔
git add . || goto :error

@REM REM 喔喔
git commit -m "dooooooo" || goto :error

@REM REM 喔喔喔
git push origin main || goto :error

:error
exit /b %errorlevel%
