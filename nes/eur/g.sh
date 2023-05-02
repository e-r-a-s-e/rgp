#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Galaga" 
         2 "Galaxy 5000" 
         3 "Gargoyle's Quest II" 
         4 "Gauntlet II" 
         5 "George Foreman's KO Boxing" 
         6 "Ghost'n Goblins" 
         7 "Ghostbusters II" 
         8 "Goal!" 
         9 "Godzilla - Monster of Monsters!" 
         10 "Golf" 
         11 "Goonies II, The" 
         12 "Gradius" 
         13 "Gremlins 2 - The New Batch" 
         14 "Guardian Legend, The" 
         15 "Guerrilla War" 
         16 "Gumshoe" 
         17 "Gun.Smoke" 
         18 "Gyromite" 
         19 "Back to EUR")

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
        wget "$DLNES/Galaga%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Galaxy%205000%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Gargoyle%27s%20Quest%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Gauntlet%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/George%20Foreman%27s%20KO%20Boxing%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Ghost%27n%20Goblins%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Ghostbusters%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Goal%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Godzilla%20-%20Monster%20of%20Monsters%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Golf%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Goonies%20II%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Gradius%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Gremlins%202%20-%20The%20New%20Batch%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Guardian%20Legend%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Guerrilla%20War%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Gumshoe%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Gun.Smoke%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Gyromite%20%28World%29.zip" -O $ROM
        $NES
        ;;
    19)
        bash nes/eur/main.sh
        ;;
esac