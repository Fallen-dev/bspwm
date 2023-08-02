# i first set up vars here

hidden_window=$(bspc query -N -n .hidden -d focused)
hidden_window_count=$($hidden_window | wc -l)

hidden_window_fn() {
  if [ $hidden_window ]; then
    echo bspc node $hidden_window -g hidden=off
  else
    echo bspc node -g hidden=on
  fi
}

titlebar_btn_ico_cls=""
titlebar_btn_ico_min=""
titlebar_btn_ico_max=""

titlebar_btn_clr_cls="%{F#ff605c}"
titlebar_btn_clr_min="%{F#ffbd44}"
titlebar_btn_clr_max="%{F#00ca4e}"

titlebar_btn_cls_cmd="%{A1:bspc node -c:}"
titlebar_btn_min_cmd="%{A1:$([ $hidden_window ] && echo 'bspc node $hidden_window -g hidden=off' || echo 'bspc node -g hidden=on'):}"
titlebar_btn_max_cmd="%{A1:bspc node --state ~floating:}"

titlebar_btn_cls="$titlebar_btn_clr_cls $titlebar_btn_cls_cmd $titlebar_btn_ico_cls%{A}"
titlebar_btn_min="$titlebar_btn_clr_min $titlebar_btn_min_cmd $titlebar_btn_ico_min%{A}"
titlebar_btn_max="$titlebar_btn_clr_max $titlebar_btn_max_cmd $titlebar_btn_ico_max%{A}"

reset_clr="%{F-}"

volume=  $(pamixer --get-volume-human)
prev=󰙣
next=󰙡
play=󰐌
pause=󰏥

# i write the logic here

case $1 in
  titlebar_buttons)
    echo $titlebar_btn_cls $titlebar_btn_min $titlebar_btn_max
  ;;
  musicplayer)
    if [ $(playerctl status) == "Playing" ]; then
      echo playing
      else
        echo false
    fi
  ;;
  volume)
    if [[ $(playerctl status) == "Playing" ]]; then
      echo "%{A:playerctl previous:}$prev%{A}  "
    else
      echo false
    fi

    echo "$volume  "
  ;;
esac

