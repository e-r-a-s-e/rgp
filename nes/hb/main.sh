#!/bin/bash
#

source sources/sources.rgp
source variables.sh
MENU="What game:"

OPTIONS=(1 "Super Bat Puncher Demo"
         2 "The Tower of Turmoil"
		 99 "Back to NES")

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
        wget "$HBNES/Super%20Bat%20Puncher%20Demo.zip" -O $ROM
        $NES
        ;;
    2)
        wget "$HBNES/TheTowerOfTurmoil_1.03.zip" -O $ROM
        $NES
        ;;
    99)
        bash nes/main.sh
        ;;
esac