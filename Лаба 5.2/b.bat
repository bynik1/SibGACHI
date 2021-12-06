@echo off
setlocal EnableDelayedExpansion

del numbers.txt
del sort_numbers.txt

for /L %%b IN (1, 1, 10) do (
	@echo !random! >> C:\numbers.txt
)
sort /reverse numbers.txt /Output sort_numbers.txt

echo on