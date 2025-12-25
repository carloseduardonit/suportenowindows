@echo off
REM Script para instalar programas no Windows
REM Executar como Administrador

setlocal enabledelayedexpansion

echo ========================================
echo Instalador de Programas
echo ========================================
echo.

REM Verificar se está executando como administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script deve ser executado como Administrador!
    pause
    exit /b 1
)

REM Exemplo: Instalar Chrome
echo Instalando Google Chrome...
choco install googlechrome -y

REM Exemplo: Instalar VS Code
echo Instalando Visual Studio Code...
choco install vscode -y

REM Exemplo: Instalar Node.js
echo Instalando Node.js...
choco install nodejs -y

REM Exemplo: Instalar Git
echo Instalando Git...  
choco install git -y

REM Adicione mais programas conforme necessário
echo Instalando 7-Zip...
choco install 7zip -y

R
echo.
echo ========================================
echo Instalacao concluida!
echo ========================================
pause