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
        wget "$IA/Kabuki%20-%20Quantum%20Fighter%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Kick%20Off%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Kickle%20Cubicle%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Kid%20Icarus%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Kirby%27s%20Adventure%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Knight%20Rider%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Konami%20Hyper%20Soccer%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Krusty%27s%20Fun%20House%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Kung%20Fu%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        bash nes/eur/main.sh
        ;;
esac