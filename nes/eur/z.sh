#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Zelda II - The Adventure of Link"
         2 "Zen - Intergalactic Ninja"
         3 "Back to EUR")

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
        wget "$DLNES/Zelda%20II%20-%20The%20Adventure%20of%20Link%20%28Europe%29%20%28Rev%20B%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Zen%20-%20Intergalactic%20Ninja%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        bash nes/eur/main.sh
        ;;
esac