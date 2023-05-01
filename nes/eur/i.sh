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

OPTIONS=(1 "Ice Hockey" 
         2 "Ikari Warriors" 
         3 "Incredible Crash Dummies, The" 
         4 "Indiana Jokes and the Last Crusade" 
         5 "IronSword - Wizards & Warriors II" 
         6 "Iron Tank - The Invasion of Normandy" 
         7 "Isolated Warrior" 
         8 "Ivan 'Ironman' Stewart's Super Off Road" 
         9 "Back to EUR")

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
        wget "$IA/Ice%20Hockey%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Ikari%20Warriors%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Incredible%20Crash%20Dummies%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Indiana%20Jones%20and%20the%20Last%20Crusade%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/IronSword%20-%20Wizards%20%26%20Warriors%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Iron%20Tank%20-%20The%20Invasion%20of%20Normandy%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Isolated%20Warrior%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Ivan%20%27Ironman%27%20Stewart%27s%20Super%20Off%20Road%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        bash nes/eur/main.sh
        ;;
esac