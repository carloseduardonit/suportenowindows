@echo off
REM Instalador de Navegadores via Chocolatey
REM Autor: ChatGPT e @Usuario
REM Data: 2025-12-26

setlocal enabledelayedexpansion

echo.
echo ===== INSTALADOR DE NAVEGADORES =====
echo.

:menu
echo.
echo Escolha uma opcao:
echo 0. Todos e sair
echo 1. Google Chrome
echo 2. Firefox
echo 3. Microsoft Edge
echo 4. Opera
echo 5. Brave Browser
echo 6. Sair
echo.
set /p choice="Digite o numero da opcao: "
if "%choice%"=="0" (
    echo Instalando todos os navegadores...
    goto Chrome
    goto Firefox
    goto Edge
    goto Opera
    goto Brave
    echo Todos os navegadores foram instalados.
    goto sair
)
else if "%choice%"=="1" ( goto Chrome) 
else if "%choice%"=="2" ( goto Firefox)
else if "%choice%"=="3" ( goto Edge) 
else if "%choice%"=="4" ( goto Opera)
else if "%choice%"=="5" ( goto Brave) 
else if "%choice%"=="6" ( goto sair)
else (
    echo Opcao invalida!
    goto menu
)

:Chrome
echo Instalando Google Chrome...
choco install googlechrome -y
pause
goto menu

:Firefox
echo Instalando Firefox...
choco install firefox -y
pause
goto menu

:Edge
echo Instalando Microsoft Edge...
choco install microsoft-edge -y
pause
goto menu

:Opera
echo Instalando Opera...
choco install opera -y
pause
goto menu

:Brave
    echo Instalando Brave Browser...
    choco install brave -y
    goto menu

:sair
echo Saindo...
pause
endlocal
exit /b