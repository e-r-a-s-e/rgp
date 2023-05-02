#!/bin/bash
#

source variables.sh
MENU="What region:"

OPTIONS=(1 "Europe"
		 99 "Homebrew")

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
	99)
		bash nes/hb/main.sh
		;;
esac