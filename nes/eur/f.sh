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

OPTIONS=(1 "F-15 Strike Eagle" 
         2 "Faxanadu" 
         3 "Felix the Cat" 
         4 "Ferrari Grand Prix Challenge" 
         5 "Fester's Quest" 
         6 "Flintstones, The - The Rescue of Dino & Hoppy" 
         7 "Flintstones, The - The Surprise at Dinosaur Peak" 
         8 "Formula 1 Sensation" 
         9 "Four Players' Tennis" 
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
        wget "$IA/F-15%20Strike%20Eagle%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Faxanadu%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Felix%20the%20Cat%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Ferrari%20Grand%20Prix%20Challenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Fester%27s%20Quest%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Flintstones%2C%20The%20-%20The%20Rescue%20of%20Dino%20%26%20Hoppy%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Flintstones%2C%20The%20-%20The%20Surprise%20at%20Dinosaur%20Peak%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Formula%201%20Sensation%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Four%20Players%27%20Tennis%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        bash nes/eur/main.sh
        ;;
    
esac