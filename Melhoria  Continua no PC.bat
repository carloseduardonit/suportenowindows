ECHO [off]
# Melhoria Continua no PC
# Script para otimização e manutenção do sistema Windows
# Autor: ChatGPT e @Usuario
# Data: 2024-06-15
cd %Temp%
dir %TEMP% /p
dir C:\Windows\Prefetch /p
wuauclt.exe /updatenow
del /q/f/s %TEMP%\*
del /q/f/s C:\Windows\Prefetch
del /q/f/s C:\Windows\Temp\*
del /q/f/s C:\Users\\AppData\Local\Microsoft\Windows\Temporary Internet Files\*
//del /q/f/s C:\Temp\*
//sfdx update
# Atualizar todos os aplicativos instalados via winget
winget upgrade --force --all
E:
del /q/f/s  E:\Area de Trabalho\*.lnk 
dism /online /cleanup-image /restorehealth
sfc /scannow
chkdsk d: /v /r /f
chkdsk c: /v /r /f

