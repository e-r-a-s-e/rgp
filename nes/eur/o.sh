#!/bin/bash
#

source sources/nes.sh
ROM=~/.cache/nesrom.zip
NES="fceux --pal 1 $ROM"

HEIGHT=19
WIDTH=76
CHOICE_HEIGHT=10
BACKTITLE="Build 23.04"
TITLE="Retro Game Pass"
MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Operation Wolf" 
         2 "Over Horizon" 
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
        wget "$IA/https://archive.org/download/No-Intro-Collection_2016-01-03_Fixed/Nintendo%20-%20Nintendo%20Entertainment%20System.zip/Operation%20Wolf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/https://archive.org/download/No-Intro-Collection_2016-01-03_Fixed/Nintendo%20-%20Nintendo%20Entertainment%20System.zip/Over%20Horizon%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        bash nes/eur/main.sh
        ;;
esac