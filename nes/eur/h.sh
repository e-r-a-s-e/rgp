#!/bin/bash
#

source sources/sources.rgp
source variables.sh

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
        wget "$DLNES/Hammerin%27%20Harry%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/High%20Speed%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Hogan%27s%20Alley%20%28World%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Home%20Alone%202%20-%20Lost%20in%20New%20York%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Hook%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Hoops%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Hudson%20Hawk%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Hunt%20for%20Red%20October%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        bash nes/eur/main.sh
        ;;
esac