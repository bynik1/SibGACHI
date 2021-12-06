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
rem это можно убрать

if not exist doc md doc
if not exist png md png
if not exist txt md txt
rem создания папок если их нет


for %%i in (*.doc) do (
	if not exist doc\%%i (
		copy %%i doc
		@echo %time% - %date% - %%i - doc >> log.log
	)
	rem если нет такого файла в данной папки добавить его
)

for %%i in (*.png) do (
	if not exist png\%%i (
		copy %%i png
		@echo %time% - %date% - %%i - png >> log.log
	)
)

for %%i in (*.txt) do ( 
	if not exist txt\%%i (
		copy %%i txt
		@echo %time% - %date%  - %%i - txt >> log.log
	)
)

tree /f %1\txt > tree_txt.txt
notepad tree_txt.txt
tree /f %1\doc > tree_doc.txt
notepad tree_doc.txt
tree /f %1\png > tree_png.txt
notepad tree_png.txt
rem показать какие файлы и папок лежать в папка doc, txt, png
rem это тоже можно убрать

del tree_png.txt
del tree_txt.txt
del tree_doc.txt
rem это тоже можно убрать

chcp 1252
echo on
