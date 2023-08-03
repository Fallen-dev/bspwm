#!/bin/bash

apps="bspwm sxhkd dunst polybar rofi picom"

copyto() {
  echo cp $1 ~/.config/$1 -r
}

[ -d ~/.config ] || mkdir ~/.config

for app in $apps; do copyto $app; done

[ -f ~/.xinitrc ] && sed 's/exec .*/exec bspwm/' test -i || echo exec bspwm > ~/.xinitrc

# install fonts
mkdir -pv ~/.local/share/fonts/
cp fonts/*.ttf ~/.local/share/fonts/
fc-cache -fv

echo "DONE! Logout and login using the command 'startx'"
