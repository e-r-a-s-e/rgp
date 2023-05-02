#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Mach Rider" 
         2 "Maniac Mansion" 
         3 "Marble Madness" 
         4 "Mario & Yoshi" 
         5 "Mario Bros." 
         6 "Mario Bros. Classic" 
         7 "Mario Is Missing!" 
         8 "McDonaldland" 
         9 "Mega Man" 
         10 "Mega Man 2" 
         11 "Mega Man 3" 
         12 "Mega Man 4" 
         13 "Mega Man 5" 
         14 "Metal Gear" 
         15 "Metroid" 
         16 "Micro Machines" 
         17 "Mighty Bomb Jack" 
         18 "Mighty Final Fight" 
         19 "Mike Tyson's Punch-Out!!" 
         20 "Mission Impossible" 
         21 "Monster in My Pocket" 
         22 "Mr. Gimmick" 
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
        wget "$DLNES/htMach%20Rider%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/htManiac%20Mansion%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/htMarble%20Madness%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/htMario%20%26%20Yoshi%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/htMario%20Bros.%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/htMario%20Bros.%20Classic%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/htMario%20Is%20Missing%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/htMcDonaldland%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/htMega%20Man%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMega%20Man%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMega%20Man%203%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMega%20Man%204%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMega%20Man%205%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMetal%20Gear%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMetroid%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMicro%20Machines%20%28Europe%29%20%28Unl%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMighty%20Bomb%20Jack%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMighty%20Final%20Fight%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/htMike%20Tyson%27s%20Punch-Out%21%21%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/htMission%20Impossible%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/htMonster%20in%20My%20Pocket%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/htMr.%20Gimmick%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        bash nes/eur/main.sh
        ;;
esac