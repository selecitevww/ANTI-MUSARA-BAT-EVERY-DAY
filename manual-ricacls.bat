@echo off

REM      BATCH FILE

chcp 65001

cls

color 70

ECHO УКАЖИТЕ ДИСК: ПРИМЕР: C

set /p "ddссk1="
set "ddссk2=%ddссk1%:"
%ddссk2%

cd "%ddссk2%\"
:loop
dir
echo Введите путь к директории в которой находятся файлы: ПРИМЕР: Users 

set /p "path1="
echo %path1%
set "path2=%path1%"
echo %path2%
cd %path2%
dir
echo Если в нужном каталоге, то введите 1, а если нет, то 3 и больше.

set /p "var1=" && cls

SET var2=2 && cls

IF %var1% GTR %var2% (
    goto loop

)

REM      BATCH FILE
echo Введите 3  R  READ
echo Введите 1  D  DELETE READ


set /p "var3="

SET var4=2 


IF %var3% GTR %var4% (
	FOR /r %%G in ("*") Do (@echo %%G
	icacls * /grant *S-1-1-0:R )

) ELSE IF %var3% LSS %var4% (
	FOR /r %%G in ("*") Do (@echo %%G
	icacls * /grant *S-1-1-0:D )

)



pause
cls
cd "%ddссk2%\"
goto loop

