#!/usr/bin/env bash

# Initialize wallpaper
swww init &
swww-daemon & sleep 0.1 && swww img ~/Wallpapers/wallpaper1.jpg &

# Start network manager applet
nm-applet --indicator &

# Start waybar
waybar &

# Start notification daemon
dunst
