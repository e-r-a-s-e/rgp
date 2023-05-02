#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "WWF King of the Ring" 
         2 "WWF Wrestlemania" 
         3 "WWF Wrestlemania Challenge" 
         4 "WWF Wrestlemania Steel Cage Challenge" 
         5 "Wario's Woods" 
         6 "Werewolf - The Last Warrior" 
         7 "Wild Gunman" 
         8 "Willow" 
         9 "Wizards & Warriors" 
         10 "Wizards & Warriors III - Kuros...Visions of Power" 
         11 "World Champ - Super Boxing Great Fight" 
         12 "Wrath of the Black Manta" 
         13 "Wrecking Crew" 
         14 "Back to EUR")

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
        wget "$DLNES/WWF%20King%20of%20the%20Ring%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/WWF%20Wrestlemania%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/WWF%20Wrestlemania%20Challenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/WWF%20Wrestlemania%20Steel%20Cage%20Challenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Wario%27s%20Woods%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Werewolf%20-%20The%20Last%20Warrior%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Wild%20Gunman%20%28World%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Willow%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Wizards%20%26%20Warriors%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Wizards%20%26%20Warriors%20III%20-%20Kuros...Visions%20of%20Power%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/World%20Champ%20-%20Super%20Boxing%20Great%20Fight%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Wrath%20of%20the%20Black%20Manta%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Wrecking%20Crew%20%28World%29.zip" -O $ROM
        $NES
        ;;
    14)
        bash nes/eur/main.sh
        ;;
esac