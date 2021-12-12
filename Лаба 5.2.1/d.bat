@echo off & setlocal enabledelayedexpansion

dir %1 /b /d >spisok.txt

notepad spisok.txt
sort spisok.txt /O spisok.txt

