#!/bin/bash
#

source sources/sources.rgp
ROM=~/.cache/nesrom.zip
NES="fceux --pal 1 $ROM"

HEIGHT=19
WIDTH=76
CHOICE_HEIGHT=10
BACKTITLE="Build 23.04"
TITLE="Retro Game Pass"
MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Eliminator Boat Duel" 
         2 "Elite" 
         3 "Eric Cantona Football Challenge - Goal! 2" 
         4 "Excitebike" 
         5 "Back to EUR")

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
        wget "$IA/Eliminator%20Boat%20Duel%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    1)
        wget "$IA/Elite%20%28Europe%29%20%28En%2CFr%2CDe%29.zip" -O $ROM
        $NES
        ;;
    1)
        wget "$IA/Eric%20Cantona%20Football%20Challenge%20-%20Goal%21%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    1)
        wget "$IA/Excitebike%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    1)
        bash nes/eur/main.sh
        ;;
esac