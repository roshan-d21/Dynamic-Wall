#!/bin/bash

while true
do
	t="$(date '+%H')"
	case $t in
		"06")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall1.jpg"
			;;
		"07"|"08")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall2.jpg"
			;;
		"09"|"10"|"11"|"12")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall3.jpg"
			;;
		"13"|"14"|"15")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall4.jpg"
			;;
		"16"|"17")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall5.jpg"
			;;
		"18")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall6.jpg"
			;;
		"19")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall7.jpg"
			;;
		"20"|"21"|"22"|"23"|"00"|"01"|"02"|"03"|"04"|"05")
			gsettings set org.gnome.desktop.background picture-uri "file:////home/${USER}/Pictures/Wallpapers/wall8.jpg"
			;;
		"*")
			echo " "
			;;
	esac
	# check for change after an hour
	sleep 3600
done