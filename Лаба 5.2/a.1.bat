@echo off

:START
if "%1"=="" GOTO END
echo %1
SHIFT
GOTO START

:END