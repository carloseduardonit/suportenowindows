@echo off
rem Instalador de Navegadores via Winget
rem Autor: ChatGPT e @Usuario
rem Data: 2025-12-26

echo.
echo ===== INSTALADOR DE NAVEGADORES =====
echo.

:menu
echo.
echo Escolha uma opcao:
echo 0. Todos
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
    echo Instalando Google Chrome...
    winget install --id Google.Chrome
    echo Instalando Firefox...
    winget install --id Mozilla.Firefox
    echo Instalando Microsoft Edge...
    winget install --id Microsoft.Edge
    echo Instalando Opera...
    winget install --id Opera.Opera
    echo Instalando Brave Browser...
    winget install --id Brave.Brave
    echo Todos os navegadores foram instalados.
    echo Saindo...
    pause
    endlocal
    exit /b
) else if "%choice%"=="1" (
    echo Instalando Google Chrome...
    winget install --id Google.Chrome 
    goto menu
) else if "%choice%"=="2" (
    echo Instalando Firefox...
    winget install --id Mozilla.Firefox
    goto menu
) else if "%choice%"=="3" (
    echo Instalando Microsoft Edge...
    winget install --id Microsoft.Edge
    goto menu
) else if "%choice%"=="4" (
    echo Instalando Opera...
    winget install --id Opera.Opera
    goto menu
) else if "%choice%"=="5" (
    echo Instalando Brave Browser...
    winget install --id Brave.Brave
    goto menu
) else if "%choice%"=="6" (
    echo Saindo...
    endlocal
    exit /b
) else (
    echo Opcao invalida!
    goto menu
)