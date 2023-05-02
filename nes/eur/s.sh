#!/bin/bash
#

source sources/sources.rgp
source variables.sh

MENU="Nintendo Entertainment System Games"

OPTIONS=(1 "Section-Z" 
         2 "Shadow Warriors" 
         3 "Shadow Warriors II - Ninja Gaiden II" 
         4 "Shadowgate" 
         5 "Shatterhand" 
         6 "Side Pocket" 
         7 "Silent Service" 
         8 "Simpsons, The - Bartman Meets Radioactive Man" 
         9 "Simpsons, The - Bart vs. the Space Mutants" 
         10 "Simpsons, The - Bart vs. the World" 
         11 "Skate or Die" 
         12 "Ski or Die" 
         13 "Slalom" 
         14 "Smash T.V." 
         15 "Smurfs, The" 
         16 "Snake's Revenge" 
         17 "Snake Rattle n Roll" 
         18 "Snow Brothers" 
         19 "Snowboard Challenge" 
         20 "Soccer" 
         21 "Solar Jetman - Hunt for the Golden Warpship" 
         22 "Solomon's Key" 
         23 "Solomon's Key 2" 
         24 "Solstice - The Quest for the Staff of Demnos" 
         25 "Spider-Man - Return of the Sinister Six" 
         26 "Spy vs Spy" 
         27 "Stack-Up" 
         28 "Stadium Events" 
         29 "Star Force" 
         30 "StarTropics" 
         31 "Star Wars" 
         32 "Star Wars - The Empire Strikes Back" 
         33 "Stealth ATF" 
         34 "Street Gangs" 
         35 "Super Mario Bros." 
         36 "Super Mario Bros. 2" 
         37 "Super Mario Bros. 3" 
         38 "Super Spike V'Ball" 
         39 "Super Sports Challenge" 
         40 "Super Spy Hunter" 
         41 "Super Turrican" 
         42 "Swamp Thing" 
         43 "Sword Master" 
         44 "Swords and Serpents" 
         45 "Back to EUR")

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
        wget "$DLNES/Section-Z%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$DLNES/Shadow%20Warriors%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    3)
        wget "$DLNES/Shadow%20Warriors%20II%20-%20Ninja%20Gaiden%20II%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    4)
        wget "$DLNES/Shadowgate%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    5)
        wget "$DLNES/Shatterhand%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    6)
        wget "$DLNES/Side%20Pocket%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    7)
        wget "$DLNES/Silent%20Service%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    8)
        wget "$DLNES/Simpsons%2C%20The%20-%20Bartman%20Meets%20Radioactive%20Man%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    9)
        wget "$DLNES/Simpsons%2C%20The%20-%20Bart%20vs.%20the%20Space%20Mutants%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    10)
        wget "$DLNES/Simpsons%2C%20The%20-%20Bart%20vs.%20the%20World%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    11)
        wget "$DLNES/Skate%20or%20Die%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    12)
        wget "$DLNES/Ski%20or%20Die%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    13)
        wget "$DLNES/Slalom%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    14)
        wget "$DLNES/Smash%20T.V.%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    15)
        wget "$DLNES/Smurfs%2C%20The%20%28Europe%29%20%28En%2CFr%2CDe%2CEs%29.zip" -O $ROM
        $NES
        ;;
    16)
        wget "$DLNES/Snake%27s%20Revenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    17)
        wget "$DLNES/Snake%20Rattle%20n%20Roll%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    18)
        wget "$DLNES/Snow%20Brothers%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    19)
        wget "$DLNES/Snowboard%20Challenge%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    20)
        wget "$DLNES/Soccer%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    21)
        wget "$DLNES/Solar%20Jetman%20-%20Hunt%20for%20the%20Golden%20Warpship%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    22)
        wget "$DLNES/Solomon%27s%20Key%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    23)
        wget "$DLNES/Solomon%27s%20Key%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    24)
        wget "$DLNES/Solstice%20-%20The%20Quest%20for%20the%20Staff%20of%20Demnos%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    25)
        wget "$DLNES/Spider-Man%20-%20Return%20of%20the%20Sinister%20Six%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    26)
        wget "$DLNES/Spy%20vs%20Spy%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    27)
        wget "$DLNES/Stack-Up%20%28World%29.zip" -O $ROM
        $NES
        ;;
    28)
        wget "$DLNES/Stadium%20Events%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    29)
        wget "$DLNES/Star%20Force%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    30)
        wget "$DLNES/StarTropics%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    31)
        wget "$DLNES/Star%20Wars%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    32)
        wget "$DLNES/Star%20Wars%20-%20The%20Empire%20Strikes%20Back%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    33)
        wget "$DLNES/Stealth%20ATF%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    34)
        wget "$DLNES/Street%20Gangs%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    35)
        wget "$DLNES/Super%20Mario%20Bros.%20%28Europe%29%20%28Rev%20A%29.zip" -O $ROM
        $NES
        ;;
    36)
        wget "$DLNES/Super%20Mario%20Bros.%202%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    37)
        wget "$DLNES/Super%20Mario%20Bros.%203%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    38)
        wget "$DLNES/Super%20Spike%20V%27Ball%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    39)
        wget "$DLNES/Super%20Sports%20Challenge%20%28Europe%29%20%28Unl%29.zip" -O $ROM
        $NES
        ;;
    40)
        wget "$DLNES/Super%20Spy%20Hunter%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    41)
        wget "$DLNES/Super%20Turrican%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    42)
        wget "$DLNES/Swamp%20Thing%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    43)
        wget "$DLNES/Sword%20Master%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    44)
        wget "$DLNES/Swords%20and%20Serpents%20%28Europe%29.zip" -O $ROM
        $NES
        ;;
    45)
        bash nes/eur/main.sh
        ;;
esac