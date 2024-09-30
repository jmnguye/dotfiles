#!/bin/sh

: "${XDG_RUNTIME_DIR:?Environment variable XDG_RUNTIME_DIR not set}"
: "${HYPRLAND_INSTANCE_SIGNATURE:?Environment variable HYPRLAND_INSTANCE_SIGNATURE not set}"

handle() {
  case "$1" in
    fullscreen*) update_title ;;
  esac
}

update_title() {
  is_fullscreen=$(hyprctl activewindow -j | jq -r .fullscreen)
  if [ "$is_fullscreen" -eq 1 ]
  then
    echo "Fullscreen"
  else
    echo ""
  fi
}
socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done

