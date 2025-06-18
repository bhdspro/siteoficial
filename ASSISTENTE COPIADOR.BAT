@echo off
title ASSISTENTE COPIADOR
mode con cols=55 lines=5
cls

@echo.
@echo ## BEM-VINDO AO ASSISTENTE COPIADOR!
@echo.
set /p arquivo=POR FAVOR, DIGITE O NOME DO ARQUIVO: 
cls

:inicio
mode con cols=50 lines=3
cls

if not exist "%arquivo% - TEMP.TXT" (
copy "%arquivo%.txt" "%arquivo% - TEMP.TXT"
cls
)

@echo.
@echo ASSISTENTE EM ANALISE!!
timeout /t 5 /nobreak>nul
cls
goto inicio