#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Volleyball"
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
        wget "$DLNES/Volleyball%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        bash nes/eur/main.sh
        ;;
esac