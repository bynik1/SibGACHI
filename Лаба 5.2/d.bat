@echo off

if exist "dir.txt" del "dir.txt"
rem если есть такой файл удалить его

if exist sort_dir.txt del sort_dir.txt
rem если есть такой файл удалить его

for %%i in (*.*) do @echo %%i >> "dir.txt"
rem выбрать все файлы в данной папке и записать их в dir1.txt

notepad "dir.txt"
rem открытие dirl.txt в блокноте виндоус

sort /reverse "dir.txt" /Output sort_dir.txt
rem сортировка файлов по убыванию их названия

echo on