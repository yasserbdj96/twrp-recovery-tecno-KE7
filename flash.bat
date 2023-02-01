@echo off
title Fastboot Flasher By Abdul all mamun
:choice
set /P c=Do you want to Reboot device into fastboot (select no if device is in fastboot )[Y/N]?
if /I "%c%" EQU "Y" goto :fastboot
if /I "%c%" EQU "N" goto :continue
goto :choice
:fastboot
adb reboot bootloader
goto :continue
:continue
fastboot flash recovery twrp.img
fastboot flash vbmeta vbmeta.img
fastboot reboot recovery