#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Ufouria - The Saga" 
         2 "Ultimate Air Combat" 
         3 "Urban Champions" 
         4 "Back to EUR")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
clear
case $CHOICE in
    1)
        wget "$DLNES/Ufouria%20-%20The%20Saga%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Ultimate%20Air%20Combat%20%28Europe%29%20%28En%2CFr%2CDe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Urban%20Champion%20%28World%29.zip" -O $ROM
        $NES
        ;;
    4)
        bash nes/eur/main.sh
        ;;
esac