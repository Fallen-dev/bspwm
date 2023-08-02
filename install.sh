#!/bin/bash

apps="bspwm sxhkd dunst polybar nitrogen picom"

copyto() {
  echo cp $1 ~/.config/$1 -r
}

for app in $apps; do copyto $app; done

initxinit() {
  case "$1" in
    1)
      echo -e "Xinitrc file already exists!\nAppending \`exec bspwm\` to the file"
      echo "esec bspwm" >> ~/.xinitrc
    ;;
    *)
      echo "Creating Xinitrc file at ~/.xinitrc"
      echo "exec bspwm" > ~/.xinitrc
    ;;
  esac
  echo ! DONE: Now logout and use the command \`startx\`
}
[ -f ~/.xinitrc ] && initxinit 1  || initxinit 0
