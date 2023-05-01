#!/bin/bash
#

source sources/nes.sh
ROM=~/.cache/nesrom.zip
NES="fceux --pal 1 $ROM"

HEIGHT=19
WIDTH=76
CHOICE_HEIGHT=10
BACKTITLE="Build 23.04"
TITLE="Retro Game Pass"
MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "TaleSpin" 
         2 "Tecmo Cup - Football Game" 
         3 "Tecmo World Cup Soccer" 
         4 "Tecmo World Wrestling" 
         5 "Teenage Mutant Hero Turtles" 
         6 "Teenage Mutant Hero Turtles - Touranment Fighters" 
         7 "Teenage Mutant Hero Turtles II - The Arcade Game" 
         8 "Tennis" 
         9 "Terminator, The" 
         10 "Terminator 2 - Judgement Day" 
         11 "Tetris" 
         12 "Tetris 2" 
         13 "Tiger-Heli" 
         14 "Time Lord" 
         15 "Tiny Toon Adventures" 
         16 "Tiny Toon Adventures 2 - Trouble in Wackyland" 
         17 "Tiny Toon Adventures Cartoon Workshop" 
         18 "Tom & Jerry - The Ultimate Game of Cat and Mouse!" 
         19 "Top Gun" 
         20 "Top Gun - The Second Mission" 
         21 "Total Recall" 
         22 "Totally Rad" 
         23 "To the Earth" 
         24 "Track & Field II" 
         25 "Track & Field in Barcelona" 
         26 "Trog!" 
         27 "Trojan" 
         28 "Trolls in Crazyland, The" 
         29 "Turbo Racing" 
         30 "Back to EUR")

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
        wget "$IA/TaleSpin%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$IA/Tecmo%20Cup%20-%20Football%20Game%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$IA/Tecmo%20World%20Cup%20Soccer%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$IA/Tecmo%20World%20Wrestling%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$IA/Teenage%20Mutant%20Hero%20Turtles%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$IA/Teenage%20Mutant%20Hero%20Turtles%20-%20Tournament%20Fighters%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$IA/Teenage%20Mutant%20Hero%20Turtles%20II%20-%20The%20Arcade%20Game%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$IA/Tennis%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$IA/Terminator%2C%20The%20%28USA%2C%20Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$IA/Terminator%202%20-%20Judgment%20Day%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$IA/Tetris%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$IA/Tetris%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$IA/Tiger-Heli%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$IA/Time%20Lord%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$IA/Tiny%20Toon%20Adventures%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$IA/Tiny%20Toon%20Adventures%202%20-%20Trouble%20in%20Wackyland%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$IA/Tiny%20Toon%20Adventures%20Cartoon%20Workshop%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$IA/Tom%20%26%20Jerry%20-%20The%20Ultimate%20Game%20of%20Cat%20and%20Mouse%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$IA/Top%20Gun%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$IA/Top%20Gun%20-%20The%20Second%20Mission%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$IA/Total%20Recall%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$IA/Totally%20Rad%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    23)
        wget "$IA/To%20the%20Earth%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    24)
        wget "$IA/Track%20%26%20Field%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    25)
        wget "$IA/Track%20%26%20Field%20in%20Barcelona%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    26)
        wget "$IA/Trog%21%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    27)
        wget "$IA/Trojan%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    28)
        wget "$IA/Trolls%20in%20Crazyland%2C%20The%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    29)
        wget "$IA/Turbo%20Racing%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    30)
        bash nes/eur/main.sh
        ;;
esac