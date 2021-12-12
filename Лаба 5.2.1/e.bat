@echo off & setlocal enabledelayedexpansion

@del log.log

call :copyfiles "doc"
call :copyfiles "png"
call :copyfiles "txt"
exit /b

:copyfiles

Md %1

for %%i in (*.%1) do (
   move %%i %1
   @echo %time% - %%i - %1 >> log.log
)
exit /b

