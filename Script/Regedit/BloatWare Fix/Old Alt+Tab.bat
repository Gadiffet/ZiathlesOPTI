@echo off

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /V AltTabSettings /T REG_DWORD /D 1 /F

taskkill /f /im explorer.exe
start explorer.exe