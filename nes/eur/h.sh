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

OPTIONS=(1 "Hammerin' Harry" 
         2 "High Speed" 
         3 "Hogan's Alley" 
         4 "Home Alone 2 - Lost in New York" 
         5 "Hook" 
         6 "Hoops" 
         7 "Hudson's Hawk" 
         8 "Hunt for Red October, The" 
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
        wget "$IA/Hammerin%27%20Harry%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/High%20Speed%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Hogan%27s%20Alley%20%28World%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Home%20Alone%202%20-%20Lost%20in%20New%20York%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Hook%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Hoops%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Hudson%20Hawk%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Hunt%20for%20Red%20October%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        bash nes/eur/main.sh
        ;;
esac