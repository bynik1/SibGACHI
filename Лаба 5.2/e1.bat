@echo off
@chcp 65001

if "%1"=="" (
	rem если не передано значение при запуске bat файла
	echo Не ввели процентCDпроцент БЕЗ ПРОБЕЛОВ. 
	echo Запустите: e.bat процентCDпроцент
	echo команда процентCDпроцент даёт путь каталога в котором вы находитесь
	GOTO :EOF
	rem выход из программы
)

for %%i in (*.docx *.bat *.log) do (
	if not exist %%~xi mkdir %%~xi
	copy "%%i" "%%~dpi%%~xi\"
	@echo %time% - %date% - %%i - doc >> log.log
)

chcp 1252
echo on
