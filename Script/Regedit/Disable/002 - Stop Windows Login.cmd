@echo off
@echo DOSVC
net stop dosvc
@echo BITS
net stop bits
@echo WindowsUpdate
net stop wuauserv
Pause