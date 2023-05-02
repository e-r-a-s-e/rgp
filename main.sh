#!/bin/bash
#
#  ____      _                ____                        ____
# |  _ \ ___| |_ _ __ ___    / ___| __ _ _ __ ___   ___  |  _ \ __ _ ___ ___
# | |_) / _ \ __| '__/ _ \  | |  _ / _` | '_ ` _ \ / _ \ | |_) / _` / __/ __|
# |  _ <  __/ |_| | | (_) | | |_| | (_| | | | | | |  __/ |  __/ (_| \__ \__ \
# |_| \_\___|\__|_|  \___/   \____|\__,_|_| |_| |_|\___| |_|   \__,_|___/___/
# –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
# 

source variables.sh
MENU="Choose the Console you'd like to play:"

OPTIONS=(1 "Nintendo - Nintendo Entertainment System")

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
		bash nes/main.sh
		;;
esac
