@echo off

echo suspend winlogon
pssuspend.exe winlogon.exe &cls 

echo kill dwm
taskkill /IM dwm.exe /F &cls

echo transfer fake dwm
xcopy /y C:\Windows\System32\_dwmfake\dwm.exe C:\Windows\System32

echo unsuspend winlogon
pssuspend.exe -r winlogon.exe &cls 