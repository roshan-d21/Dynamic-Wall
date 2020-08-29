#!/bin/bash

PID="$(pidof gnome-shell | cut -d ' ' -f 1)"
export DBUS_SESSION_BUS_ADDRESS="$(echo "$(tr '\0' '\n' < /proc/${PID}/environ | grep "DBUS_SESSION_BUS_ADDRESS" | cut -d "=" -f 2-)")"

t="$(date '+%H')"
case $t in
	"06")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall1.jpg"
		;;
	"07"|"08")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall2.jpg"
		;;
	"09"|"10"|"11"|"12")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall3.jpg"
		;;
	"13"|"14"|"15")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall4.jpg"
		;;
	"16"|"17")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall5.jpg"
		;;
	"18")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall6.jpg"
		;;
	"19")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall7.jpg"
		;;
	"20"|"21"|"22"|"23"|"00"|"01"|"02"|"03"|"04"|"05")
		gsettings set org.gnome.desktop.background picture-uri "file:///${HOME}/Pictures/Wallpapers/wall8.jpg"
		;;
	"*")
		echo " "
		;;
esac
