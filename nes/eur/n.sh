#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "NES Open Tournament Golf" 
         2 "New Ghostbusters II" 
         3 "New Zealand Story, The" 
         4 "Nigel Mansell's World Championship Racing" 
         5 "Nintendo World Cup" 
         6 "Noah's Ark" 
         7 "North & South" 
         8 "Back to EUR")

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
        wget "$DLNES/NES%20Open%20Tournament%20Golf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/New%20Ghostbusters%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/New%20Zealand%20Story%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Nigel%20Mansell%27s%20World%20Championship%20Racing%20%28Europe%29%20%28En%2CFr%2CDe%2CEs%2CIt%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Nintendo%20World%20Cup%20%28Europe%29%20%28Rev%20B%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Noah%27s%20Ark%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/North%20%26%20South%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        bash nes/eur/main.sh
        ;;
esac