#!/bin/bash

apps="bspwm sxhkd dunst polybar rofi picom"

copy() {
  cp $1 ~/.config/$1 -r
}

[ -d ~/.config ] || mkdir -v ~/.config

for app in $apps; do copy $app; done

echo Dotfiles copied to config dir

[ -f ~/.xinitrc ] && cp ~/.xinitrc ~/.xinitrc.bak
[ -d ~/.local/bin ] || mkdir -pv ~/.local/bin
[ -d ~/.local/share/fonts ] || mkdir -pv ~/.local/share/fonts/
[ -d ~/Pictures ] || mkdir -v ~/Pictures


echo '# USEFUL ENV VARS
export XDG_CURRENT_DESKTOP="bspwm"
export XDG_SESSION_DESKTOP="bspwm"
export WINDOW_MANAGER="bspwm"
export XDG_DATA_DIRS="${XDG_DATA_DIRS:-/usr/local/share/:/usr/share}"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export PATH="${PATH}:$HOME/.local/bin"

dbus-update-activation-environment --systemd --all
xsetroot -cursor_name left_ptr

exec bspwm
' > ~/.xinitrc

echo Added Xinit file, use \`startx\` command from the login shell

cp ./st ~/.local/bin
cp ./dmenu_run ~/.local/bin

echo Installing fonts...
# install fonts
cp ./fonts/*.ttf ~/.local/share/fonts/
fc-cache -fv

cp ./wall.jpg ~/Pictures
echo The wallpaper is placed at ~/Pictures dir

echo NOTE: .xinitrc file esists and is renamed as .xinitrc.bak

echo Setup complete!!! You are ready to GO!
