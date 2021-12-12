@echo off

:shift

@echo %1
shift

if "%1" == "" goto end
goto shift

:end
pause


