#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Danny Sullivan's Indy Heat" 
         2 "Darkman" 
         3 "Darkwing Duck" 
         4 "David Crane's A Boy and His Blob - Trouble on Blobolonia" 
         5 "Days of Thunder" 
         6 "Defender of the Crown" 
         7 "Devil World" 
         8 "Die Hard" 
         9 "Digger T. Rock - The Legend of the Lost City" 
         10 "Donkey Kong" 
         11 "Donkey Kong 3" 
         12 "Donkey Kong Classics" 
         13 "Donkey Kong Jr." 
         14 "Donkey Kong Jr. Math" 
         15 "Double Dragon" 
         16 "Double Dragon II - The Revenge" 
         17 "Double Dragon III - The Sacred Stones" 
         18 "Double Dribble" 
         19 "Dr. Mario" 
         20 "Dragon's Lair" 
         21 "Dropzone" 
         22 "Duck Hunt" 
         23 "DuckTales" 
         24 "DuckTales 2" 
         25 "Dynablaster" 
         26 "Back to EUR")

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
        wget "$DLNES/Danny%20Sullivan%27s%20Indy%20Heat%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Darkman%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Darkwing%20Duck%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/David%20Crane%27s%20A%20Boy%20and%20His%20Blob%20-%20Trouble%20on%20Blobolonia%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Days%20of%20Thunder%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Defender%20of%20the%20Crown%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Devil%20World%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Die%20Hard%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Digger%20T.%20Rock%20-%20The%20Legend%20of%20the%20Lost%20City%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Donkey%20Kong%20%28World%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Donkey%20Kong%203%20%28World%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Donkey%20Kong%20Classics%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Donkey%20Kong%20Jr.%20%28World%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Donkey%20Kong%20Jr.%20Math%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Double%20Dragon%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Double%20Dragon%20II%20-%20The%20Revenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Double%20Dragon%20III%20-%20The%20Sacred%20Stones%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Double%20Dribble%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$DLNES/Dr.%20Mario%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/Dragon%27s%20Lair%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$DLNES/Dropzone%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$DLNES/Duck%20Hunt%20%28World%29.zip" -O $ROM
        $NES
        ;;
    23)
        wget "$DLNES/DuckTales%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    24)
        wget "$DLNES/DuckTales%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    25)
        wget "$DLNES/Dynablaster%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    26)
        bash nes/eur/main.sh
        ;;
esac