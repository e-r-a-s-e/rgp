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

OPTIONS=(1 "Bad Dudes vs. Dragon Ninja"
         2 "Balloon Fight"
         3 "Barbie"
         4 "Barker Bill's Trick Shooting"
         5 "Baseball"
         6 "Batman - Return of the Joker"
         7 "Batman - The Video Game"
         8 "Batman Returns"
         9 "Battle of Olympus, The"
         10 "Battletoads"
         11 "Beauty and the Beast"
         12 "Best of the Best - Championship Karate"
         13 "Bigfoot"
         14 "Bionic Commando"
         15 "Blades of Steel"
         16 "Blaster Master"
         17 "Blue Shadow"
         18 "Blues Brothers, The"
         19 "Boulder Dash"
         20 "Bram Stoker's Dracula"
         21 "Bubble Bobble"
         22 "Bucky O'Hare"
         23 "Bugs Bunny Blowout, The"
         24 "Burai Fighter"
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
        wget "$IA/Bad%20Dudes%20vs.%20Dragon%20Ninja%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Balloon%20Fight%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Barbie%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Barker%20Bill%27s%20Trick%20Shooting%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Baseball%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Batman%20-%20Return%20of%20the%20Joker%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Batman%20-%20The%20Video%20Game%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Batman%20Returns%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Battle%20of%20Olympus%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$IA/Battletoads%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$IA/Beauty%20and%20the%20Beast%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$IA/Best%20of%20the%20Best%20-%20Championship%20Karate%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$IA/Bigfoot%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$IA/Bionic%20Commando%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$IA/Blades%20of%20Steel%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$IA/Blaster%20Master%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$IA/Blue%20Shadow%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$IA/Blues%20Brothers%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$IA/Boulder%20Dash%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$IA/Bram%20Stoker%27s%20Dracula%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$IA/Bubble%20Bobble%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$IA/Bucky%20O%27Hare%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    23)
        wget "$IA/Bugs%20Bunny%20Blowout%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    24)
        wget "$IA/Burai%20Fighter%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    25)
        bash nes/eur/main.sh
        ;;
esac