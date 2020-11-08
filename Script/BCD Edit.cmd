@echo off
@echo Disable HPET
bcdedit /set useplatformclock no
bcdedit /deletevalue useplatformclock
@echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes
bcdedit /set disabledynamictick true
@echo Disable synthetic timers
bcdedit /set useplatformtick yes
@echo SyncPolicy Legacy
bcdedit /set tscsyncpolicy legacy
@echo Boot timeout 0
bcdedit /timeout 0
@echo CPU Max
powercfg -attributes SUB_PROCESSOR 5d76a2ca-e8c0-402f-a133-2158492d58ad -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 1
powercfg -setactive scheme_current
@echo Disable nx
bcdedit /set nx OptIn
@echo Disable boot screen animation
bcdedit /set bootux disabled
@echo Disable Integrity Checks
bcdedit /set loadoptions DISABLE_INTEGRITY_CHECKS
bcdedit /set nointegritychecks off
@echo Speed up boot times
bcdedit /set bootmenupolicy standard
@echo Enable xApic
bcdedit /set x2apicpolicy enable
@echo Disable Old Apic
bcdedit /set uselegacyapicmode no
@echo Disable hyper virtualization
bcdedit /set hypervisorlaunchtype off
@echo Disable trusted platform module (TPM)
bcdedit /set tpmbootentropy ForceDisable
@echo Remove windows login logo
bcdedit /set quietboot yes
@echo Compatibility Device
bcdedit /deletevalue usefirmwarepcisettings
@echo Disable boot logo
bcdedit /set {globalsettings} custom:16000067 true
@echo Disable spinning animation
bcdedit /set {globalsettings} custom:16000069 true
@echo Disable boot messages
bcdedit /set {globalsettings} custom:16000068 true
pause