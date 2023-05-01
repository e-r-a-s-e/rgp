#!/bin/bash
#

HEIGHT=19
WIDTH=65
CHOICE_HEIGHT=10
BACKTITLE="Build 23.04"
TITLE="Retro Game Pass"
MENU="What region:"

OPTIONS=(1 "Europe"
         2 "Japan"
         3 "North America")

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
		bash nes/eur/main.sh
		;;
	2)
		bash nes/jpn/main.sh
		;;
    3)
        bash nes/usa/main.sh
        ;;
esac