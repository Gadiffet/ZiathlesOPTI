@echo off

echo transfer dwm
xcopy /y C:\Windows\System32\_dwm\dwm.exe C:\Windows\System32

echo kill winlogon
pskill.exe -t winlogon