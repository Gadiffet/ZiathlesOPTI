@echo off
@echo Go
netsh int tcp set global rss=disabled
netsh int tcp set global autotuning=disabled
netsh int tcp set global autotuning=norma
netsh int tcp set supplemental Internet congestionprovider=CTCP
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global fastopen=enabled
netsh int tcp set global fastopenfallback=enabled
netsh int tcp set global pacingprofile=off
netsh int tcp set global hystart=enabled
pause
