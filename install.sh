#!/bin/bash

cp -r ./Wallpapers ~/Pictures
cp .wallpaper.sh ~/
chmod +x ~/.wallpaper.sh
mkdir ~/.config ~/.config/autostart
printf "[Desktop Entry]\nType=Application\nExec=/home/${USER}/.wallpaper.sh\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_IN]=Dynamic-Wall\nName=Dynamic-Wall\nComment[en_IN]=A program that dynamically changes the wallpaper based on the time of the day\nComment=A program that dynamically changes the wallpaper based on the time of the day\n" > ~/.config/autostart/.wallpaper.sh.desktop
~/.wallpaper.sh &