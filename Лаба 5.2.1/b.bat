@echo off & setlocal enabledelayedexpansion

(@for /l %%i in (1,1,10) do (
  @echo !random! 
))> numbers.txt

(for /f %%i in (numbers.txt) do (
    set /a x= 100000+%%i
    @echo !x! 
))>temp.txt

@sort /R temp.txt /O temp.txt 

(for /f %%i in (temp.txt) do (
    set /a x= %%i - 100000
    @echo !x! 
))>sort_numbers.txt