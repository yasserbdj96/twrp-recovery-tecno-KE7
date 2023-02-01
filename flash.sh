#!/bin/bash

echo "Fastboot Flasher By Abdul all mamun & it was modified by yasserbdj96"

#sleep 3
choice(){
    echo -n "Do you want to Reboot device into fastboot (select no if device is in fastboot )[Y/N]?"
    read c
    
    if [ "$c" == "y" ] || [ "$c" == "Y" ] ; then
        fastboot
    
    elif [ "$c" == "n" ] || [ "$c" == "N" ] ; then
        continue
    
    else
        choice
    fi
    
}

fastboot(){
    adb reboot bootloader
}

continue(){
    fastboot flash recovery twrp.img
    fastboot flash vbmeta vbmeta.img
    fastboot reboot recovery
}

choice