#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "R.C. Pro-Am" 
         2 "R.C. Pro-Am II" 
         3 "Racermate Challenge II" 
         4 "Racket Attack" 
         5 "Rackets & Rivals" 
         6 "Rad Racer" 
         7 "Rainbow Islands - Bubble Bobble 2" 
         8 "Rampart" 
         9 "Rescue - The Embassy Mission" 
         10 "RoadBlasters" 
         11 "Road Fighter" 
         12 "Robin Hood - Prince of Thieves" 
         13 "RoboCop" 
         14 "RoboCop 2" 
         15 "Robocop 3" 
         16 "Robo Warrior" 
         17 "Rockin' Kats" 
         18 "Rod Land" 
         19 "Rollergames" 
         20 "Roundball - 2-on-2 Challenge" 
         21 "Rush'n Attack" 
         22 "Rygar" 
         23 "Back to EUR")

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
        wget "$DLNES/R.C.%20Pro-Am%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/R.C.%20Pro-Am%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Racermate%20Challenge%20II%20%28Europe%29%20%28v9.03.128%29%20%28Unl%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Racket%20Attack%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Rackets%20%26%20Rivals%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Rad%20Racer%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Rainbow%20Islands%20-%20Bubble%20Bobble%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Rampart%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Rescue%20-%20The%20Embassy%20Mission%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/RoadBlasters%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Road%20Fighter%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Robin%20Hood%20-%20Prince%20of%20Thieves%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/RoboCop%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/RoboCop%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/RoboCop%203%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Robo%20Warrior%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Rockin%27%20Kats%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Rod%20Land%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$DLNES/Rollergames%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/Roundball%20-%202-on-2%20Challenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$DLNES/Rush%27n%20Attack%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$DLNES/Rygar%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    23)
        bash nes/eur/main.sh
        ;;
esac