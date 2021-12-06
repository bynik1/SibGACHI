@echo off
rem отключение вывода всего содержимого этого файла
setlocal EnableDelayedExpansion
rem нужна для изенений значений переменных

if "%1"=="" (
	rem если не передано значение при запуске bat файла
	echo Не ввели i. Запустите: с i 
	GOTO :EOF
	rem выход из программы
)

if %1 GTR 46 (
	rem если переданное значение больше 46
	echo Извините! FIB^( %1 ^) выше допустимой точности bat. 
	goto :EOF
	rem выход из программы
)

Set Fi1=1
Set FiB=1

for /L %%I in (3,1,%1) Do (
	Set Fi2=!FiB!
	Set /A FiB+=!Fi1!
	Set Fi1=!Fi2!
)

echo FIB^( %1 ^) : !FiB!