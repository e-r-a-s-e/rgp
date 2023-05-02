#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Kabuki - Quantum Fighter" 
         2 "Kick Off" 
         3 "Kickle Cubicle" 
         4 "Kid Icarus" 
         5 "Kirby's Adventure" 
         6 "Knight Rider" 
         7 "Konami Hyper Soccer" 
         8 "Krusty's Fun House" 
         9 "Kung Fu" 
         10 "Back to EUR")

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
        wget "$DLNES/Kabuki%20-%20Quantum%20Fighter%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Kick%20Off%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Kickle%20Cubicle%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Kid%20Icarus%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Kirby%27s%20Adventure%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Knight%20Rider%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Konami%20Hyper%20Soccer%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Krusty%27s%20Fun%20House%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Kung%20Fu%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        bash nes/eur/main.sh
        ;;
esac