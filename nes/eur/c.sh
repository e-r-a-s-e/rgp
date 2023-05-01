#!/bin/bash
#

source sources/nes.sh
ROM=~/.cache/nesrom.zip
NES="fceux --pal 1 $ROM"

HEIGHT=19
WIDTH=65
CHOICE_HEIGHT=10
BACKTITLE="Build 23.04"
TITLE="Retro Game Pass"
MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "California Games"
         2 "Campcom's Gold Medal Challenge '92" 
         3 "Captain Planet and the Planeteers" 
         4 "Captain Skyhawk" 
         5 "Castelian" 
         6 "Castlevania" 
         7 "Castlevania II - Simon's Quest" 
         8 "Castlevania III - Dracula's Curse" 
         9 "Championship Rally" 
         10 "Chessmaster, The" 
         11 "Chip 'n Dale - Rescue Rangers" 
         12 "Chip 'n Dale - Rescue Rangers 2" 
         13 "City Connection" 
         14 "Clu Clu Land" 
         15 "Cobra Triangle" 
         16 "Cosmic Spacehead" 
         17 "Crackout" 
         18 "Back to EUR")

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
        wget "$IA/California%20Games%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Capcom%27s%20Gold%20Medal%20Challenge%20%2792%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Captain%20Planet%20and%20the%20Planeteers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Captain%20Skyhawk%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Castelian%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Castlevania%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Castlevania%20II%20-%20Simon%27s%20Quest%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Castlevania%20III%20-%20Dracula%27s%20Curse%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Championship%20Rally%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$IA/Chessmaster%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$IA/Chip%20%27n%20Dale%20-%20Rescue%20Rangers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$IA/Chip%20%27n%20Dale%20-%20Rescue%20Rangers%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$IA/City%20Connection%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$IA/Clu%20Clu%20Land%20%28World%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$IA/Cobra%20Triangle%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$IA/Cosmic%20Spacehead%20%28Europe%29%20%28En%2CFr%2CDe%2CEs%29%20%28Unl%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$IA/Crackout%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        bash nes/eur/main.sh
        ;;
esac