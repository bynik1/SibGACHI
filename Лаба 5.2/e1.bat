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

for %%i in (*.docx *.png *.txt) do (
	if not exist %%~xi mkdir %%~xi
	rem если нет папки для файлов с таким разрешением создать её
	copy "%%i" "%%~xi"
	rem копировать данный файл в папку с подходящем расширением
	@echo %time% - %date% - %%i - %%~xi >> log.log
	rem записываем в log.log время, дату, название файла, в какую папку скопировали файл
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
