volume=$(pamixer --get-volume-human)
prev=󰙣
next=󰙡
play=󰐌
pause=󰏥

if [[ $(playerctl status) == "Playing" ]]; then
  echo "%{T3}󰕾%{T-}  $volume   %{A:playerctl previous:}$prev%{A}   %{A:playerctl pause:}$pause%{A}   %{A:playerctl next:}$next%{A}"
elif [[ $(playerctl status) == "Paused" ]]; then
  echo "%{T3}󰕾%{T-}  $volume   %{A:playerctl previous:}$prev%{A}   %{A:playerctl play:}$play%{A}   %{A:playerctl next:}$next%{A}"
else
  echo "%{T3}󰕾%{T-}  $volume"
fi
