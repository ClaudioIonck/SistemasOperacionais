@echo off
color 0e
title Jogo de adivinhacao
set /a guessnum=0
set /a answer=%RANDOM%
set variable1=surf33
echo -------------------------------------------------
echo Bem-vindo(a) ao jogo de adivinhacao!
echo.
echo Tente adivinhar meu numero!
echo 	- Digite "Help" para aprender a jogar!
echo -------------------------------------------------
echo.


echo.
set /p guess=
:help
echo.


echo -------------------------------------------------
echo Version:
@ver
:help
echo.
echo 	Ajuda:
echo	- Digite algum numero para adivinar o resultado;
echo	- Quando adivinhar o numero o programa se encerra automaticamente!
echo 	BOA SORTE!!!
echo -------------------------------------------------
echo.



:top
echo.
set /p guess=


echo.
if %guess% GTR %answer% ECHO Menor!
if %guess% LSS %answer% ECHO Maior!
if %guess%==%answer% GOTO EQUAL
/a guessnum=guessnum+1
if %guess%==%variable1% ECHO Descobriu? A resposta e: %answer%
goto top
:equal
echo Parabens, voce acertou!!!
echo.
echo Voce fez %guessnum% tentativas.
echo.
pause