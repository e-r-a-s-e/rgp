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

OPTIONS=(1 "Jack Nicklaus' Greatest 18 Holes of Major Championship Golf" 
         2 "Jackie Chan's Action Kung Fu" 
         3 "James Bond Jr" 
         4 "Jetsons, The - Cogswell's Caper" 
         5 "Jimmy Connors Tennis" 
         6 "Joe & Mac - Caveman Ninja" 
         7 "Journey to Silius" 
         8 "Jungle Book, The" 
         9 "Jurassic Park" 
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
        wget "$IA/Jack%20Nicklaus%27%20Greatest%2018%20Holes%20of%20Major%20Championship%20Golf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Jackie%20Chan%27s%20Action%20Kung%20Fu%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/James%20Bond%20Jr%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Jetsons%2C%20The%20-%20Cogswell%27s%20Caper%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Jimmy%20Connors%20Tennis%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Joe%20%26%20Mac%20-%20Caveman%20Ninja%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Journey%20to%20Silius%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Jungle%20Book%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Jurassic%20Park%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        bash nes/eur/main.sh
        ;;
esac