@echo off & setlocal enabledelayedexpansion

if [%1]==[] (
    @echo sorry, it's not a number
    exit /b
)

if [%1] == [0] (
    @echo 0
    exit /b
)

if [%1] == [1] (
    @echo 1
    exit /b
)

set a=0
set b=1
set c=0

for /l %%i in (2,1,%1) do (
	set /a c=!a!+!b!
	set a=!b!
	set b=!c!
)
@echo %c%

