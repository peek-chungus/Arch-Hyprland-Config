#!/bin/bash

terminal="kitty"
browser="google-chrome-stable"
discord="discord"
minecraft="prismlaucnher"
spotify="spotify-launcher"

hyprctl dispatch workspace 1
$terminal & disown
sleep 1.5

hyprctl dispatch workspace 2
$minecraft & disown
sleep 1.5

hyprctl dispatch 5
$terminal -e cmatrix -C magenta & disown
$terminal -e peaclock --config-dir="${HOME}/.config/peaclock" & disown
$terminal -e cava & disown
$terminal -e htop & disown
sleep 1.5

hyprctl dispatch workspace 6
$brower & disown
sleep 2

hyprctl dispatch workspace 7
$spotify & disown
sleep 1.5
hyprctl dispatch workspace 8
$discord &>/dev/null & disown
sleep 2.5
hyprctl dispatch workspace 1
