#!/bin/bash
#

source sources/sources.rgp
source variables.sh
MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Yoshi's Cookie"
         2 "Back to EUR")

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
        wget "$DLNES/Yoshi%27s%20Cookie%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        bash nes/eur/main.sh
esac