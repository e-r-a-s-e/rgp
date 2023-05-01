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

OPTIONS=(1 "Lee Trevino's Fighting Golf" 
         2 "Legend of Prince Valiant, The" 
         3 "Legend of Zelda, The" 
         4 "Lemmings" 
         5 "Lethal Weapon" 
         6 "LifeForce - Salamander" 
         7 "Lion King, The" 
         8 "Little Nemo - The Dream Master" 
         9 "Little Ninja Brothers" 
         10 "Little Samson" 
         11 "Low G Man - The Low Gravity Man" 
         12 "Lunar Pool" 
         13 "Back to EUR")

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
        wget "$IA/Lee%20Trevino%27s%20Fighting%20Golf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Legend%20of%20Prince%20Valiant%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Legend%20of%20Zelda%2C%20The%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Lemmings%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Lethal%20Weapon%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Life%20Force%20-%20Salamander%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Lion%20King%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Little%20Nemo%20-%20The%20Dream%20Master%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Little%20Ninja%20Brothers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$IA/Little%20Samson%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$IA/Low%20G%20Man%20-%20The%20Low%20Gravity%20Man%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$IA/Lunar%20Pool%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        bash nes/eur/main.sh
        ;;
esac