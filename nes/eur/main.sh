#!/bin/bash
#

source variables.sh

MENU="Letter:"

OPTIONS=(1 "A"
         2 "B"
         3 "C"
         4 "D"
         5 "E"
         6 "F"
         7 "G"
         8 "H"
         9 "I"
         10 "J"
         11 "K"
         12 "L"
         13 "M"
         14 "N"
         15 "O"
         16 "P"
         17 "Q"
         18 "R"
         19 "S"
         20 "T"
         21 "U"
         22 "V"
         23 "W"
         24 "X"
         25 "Y"
         26 "Z"
         27 "back to region")
         
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
        bash nes/eur/a.sh
        ;;
    2)
        bash nes/eur/b.sh
        ;;
    3)
        bash nes/eur/c.sh
        ;;
    4)
        bash nes/eur/d.sh
        ;;
    5)
        bash nes/eur/e.sh
        ;;
    6)
        bash nes/eur/f.sh
        ;;
    7)
        bash nes/eur/g.sh
        ;;
    8)
        bash nes/eur/h.sh
        ;;
    9)
        bash nes/eur/i.sh
        ;;
    10)
        bash nes/eur/j.sh
        ;;
    11)
        bash nes/eur/k.sh
        ;;
    12)
        bash nes/eur/l.sh
        ;;
    13)
        bash nes/eur/m.sh
        ;;
    14)
        bash nes/eur/n.sh
        ;;
    15)
        bash nes/eur/o.sh
        ;;
    16)
        bash nes/eur/p.sh
        ;;
    17)
        dialog --title "Error" --msgbox "There are no games that start with Q for PAL NES games" 19 65
        bash nes/eur/main.sh
        ;;
    18)
        bash nes/eur/r.sh
        ;;
    19)
        bash nes/eur/s.sh
        ;;
    20)
        bash nes/eur/t.sh
        ;;
    21)
        bash nes/eur/u.sh
        ;;
    22)
        bash nes/eur/v.sh
        ;;
    23)
        bash nes/eur/w.sh
        ;;
    24)
        bash nes/eur/x.sh
        ;;
    25)
        bash nes/eur/y.sh
        ;;
    26)
        bash nes/eur/z.sh
        ;;
    27)
        bash nes/main.sh
        ;;
esac