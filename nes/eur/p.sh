#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "P.O.W. - Prisoners of War" 
         2 "Pac-Man" 
         3 "Panic Restaurant" 
         4 "Paperboy" 
         5 "Paperboy 2" 
         6 "Parasol Stars - Rainbow Islands II" 
         7 "Parodius" 
         8 "Phantom Air Mission" 
         9 "Pin Bot" 
         10 "Pinball" 
         11 "Pirates!" 
         12 "Popeye" 
         13 "Power Blade" 
         14 "Prince of Persia" 
         15 "Pro Wrestling" 
         16 "Probotector" 
         17 "Probotector II - Return of the Evil Forces" 
         18 "Punch-Out!!" 
         19 "Puzznic" 
         20 "Back to EUR")

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
        wget "$DLNES/P.O.W.%20-%20Prisoners%20of%20War%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Pac-Man%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Panic%20Restaurant%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Paperboy%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Paperboy%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Parasol%20Stars%20-%20Rainbow%20Islands%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Parodius%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Phantom%20Air%20Mission%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Pin%20Bot%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Pinball%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Pirates%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Popeye%20%28World%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Power%20Blade%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Prince%20of%20Persia%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Pro%20Wrestling%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Probotector%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Probotector%20II%20-%20Return%20of%20the%20Evil%20Forces%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Punch-Out%21%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$DLNES/Puzznic%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        bash nes/eur/main.sh
        ;;
esac