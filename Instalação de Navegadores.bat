@echo off
setlocal enabledelayedexpansion

echo.
echo ===== INSTALADOR DE NAVEGADORES =====
echo.

:menu
echo.
echo Escolha uma opcao:
echo 1. Google Chrome
echo 2. Firefox
echo 3. Microsoft Edge
echo 4. Opera
echo 5. Sair
echo.
set /p choice="Digite o numero da opcao: "

if "%choice%"=="1" (
    echo Instalando Google Chrome...
    choco install googlechrome -y
    goto menu
) else if "%choice%"=="2" (
    echo Instalando Firefox...
    choco install firefox -y
    goto menu
) else if "%choice%"=="3" (
    echo Instalando Microsoft Edge...
    choco install microsoft-edge -y
    goto menu
) else if "%choice%"=="4" (
    echo Instalando Opera...
    choco install opera -y
    goto menu
) else if "%choice%"=="5" (
    echo Saindo...
    exit /b
) else (
    echo Opcao invalida!
    goto menu
)

