#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "10-Yard Fight"
         2 "Action in New York"
         3 "Addams Family, The"
         4 "Addams Family, The - Pugsley's Scavenger Hunt"
         5 "Adventure Island Classic"
         6 "Adventure Island Part II, The"
         7 "Adventures in the Magic Kingdom"
         8 "Adventures of Bayou Billy, The"
         9 "Adventures of Lolo"
         10 "Adventures of Lolo 2"
         11 "Adventures of Lolo 3"
         12 "Adventures of Rad Gravity, The"
         13 "Air Fortress"
         14 "Airwolf"
         15 "Aladdin"
         16 "Alfred Chicken"
         17 "Alien 3"
         18 "Alpha Mission"
         19 "Anticipation"
         20 "Arch Rivals - A Basketbrawl!"
         21 "Asterix"
         22 "Astyanax"
         23 "Athletic World"
         24 "Attack of the Killer Tomatoes"
         25 "Back to EUR")

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
        wget "$DLNES/10-Yard%20Fight%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Action%20in%20New%20York%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Addams%20Family%2C%20The%20%28Europe%29%20%28En%2CFr%2CDe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Addams%20Family%2C%20The%20-%20Pugsley%27s%20Scavenger%20Hunt%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Adventure%20Island%20Classic%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Adventure%20Island%20Part%20II%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Adventures%20in%20the%20Magic%20Kingdom%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Adventures%20of%20Bayou%20Billy%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Adventures%20of%20Lolo%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Adventures%20of%20Lolo%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Adventures%20of%20Lolo%203%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Adventures%20of%20Rad%20Gravity%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Air%20Fortress%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Airwolf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Aladdin%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Alfred%20Chicken%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Alien%203%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Alpha%20Mission%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$DLNES/Anticipation%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/Arch%20Rivals%20-%20A%20Basketbrawl%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$DLNES/Asterix%20%28Europe%29%20%28En%2CFr%2CDe%2CEs%2CIt%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$DLNES/Astyanax%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    23)
        wget "$DLNES/Athletic%20World%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    24)
        wget "$DLNES/Attack%20of%20the%20Killer%20Tomatoes%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    25)
        bash nes/eur/main.sh
        ;;
esac