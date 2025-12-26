@echo off
setlocal

:menu
cls
echo ============================================
echo   MENU DE INSTALACAO - FERRAMENTAS DEV / QA
echo ============================================
echo.
echo  1. Apache NetBeans
echo  2. Notepad++
echo  3. Insomnia REST Client
echo  4. Visual Studio Code
echo  5. GitKraken
echo  6. Eclipse IDE
echo  7. PyCharm Community Edition
echo  8. GitHub Desktop
echo  9. Postman
echo 10. Instalar TUDO
echo 11. Sair
echo.
set /p opcao="Digite o numero da opcao desejada: "

if "%opcao%"=="1" goto netbeans
if "%opcao%"=="2" goto notepad
if "%opcao%"=="3" goto insomnia
if "%opcao%"=="4" goto vscode
if "%opcao%"=="5" goto gitkraken
if "%opcao%"=="6" goto eclipse
if "%opcao%"=="7" goto pycharm
if "%opcao%"=="8" goto github
if "%opcao%"=="9" goto postman
if "%opcao%"=="10" goto tudo
if "%opcao%"=="11" goto sair

echo Opcao invalida!
pause
goto menu

:netbeans
echo Instalando Apache NetBeans...
choco install netbeans -y
pause
goto menu

:notepad
echo Instalando Notepad++...
choco install notepadplusplus -y
pause
goto menu

:insomnia
echo Instalando Insomnia REST Client...
choco install insomnia-rest-client -y
pause
goto menu

:vscode
echo Instalando Visual Studio Code...
choco install vscode -y
pause
goto menu

:gitkraken
echo Instalando GitKraken...
choco install gitkraken -y
pause
goto menu

:eclipse
echo Instalando Eclipse IDE...
choco install eclipse -y
pause
goto menu

:pycharm
echo Instalando PyCharm Community Edition...
choco install pycharm-community -y
pause
goto menu

:github
echo Instalando GitHub Desktop...
choco install githubdesktop -y
pause
goto menu

:postman
echo Instalando Postman...
choco install postman -y
pause
goto menu

:tudo
echo Instalando TODAS as ferramentas...
choco install netbeans notepadplusplus insomnia-rest-client vscode gitkraken eclipse pycharm-community githubdesktop postman -y
pause
goto menu

:sair
echo Saindo do instalador...
endlocal
exit /b
