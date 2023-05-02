#!/bin/bash
#

source sources/sources.rgp
source variables.sh

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
        wget "$DLNES/California%20Games%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Capcom%27s%20Gold%20Medal%20Challenge%20%2792%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Captain%20Planet%20and%20the%20Planeteers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Captain%20Skyhawk%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Castelian%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Castlevania%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Castlevania%20II%20-%20Simon%27s%20Quest%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Castlevania%20III%20-%20Dracula%27s%20Curse%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Championship%20Rally%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Chessmaster%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Chip%20%27n%20Dale%20-%20Rescue%20Rangers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Chip%20%27n%20Dale%20-%20Rescue%20Rangers%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/City%20Connection%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Clu%20Clu%20Land%20%28World%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Cobra%20Triangle%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Cosmic%20Spacehead%20%28Europe%29%20%28En%2CFr%2CDe%2CEs%29%20%28Unl%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Crackout%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        bash nes/eur/main.sh
        ;;
esac