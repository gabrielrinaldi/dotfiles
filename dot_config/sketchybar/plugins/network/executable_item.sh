#!/usr/bin/env bash

network_down=(
  y_offset=-6
  label.font="$FONT:Bold:10"
  icon="$NETWORK_DOWN"
  icon.color="$GREEN"
  icon.highlight_color="$BLUE"
  update_freq=1
)

network_up=(
  background.padding_right=-70
  y_offset=6
  label.font="$FONT:Bold:10"
  icon="$NETWORK_UP"
  icon.color="$GREEN"
  icon.highlight_color="$BLUE"
  update_freq=1
  script="$PLUGINS_DIR/network/script.sh"
)

sketchybar \
  --add item network.down right \
  --set network.down "${network_down[@]}" \
  --add item network.up right \
  --set network.up "${network_up[@]}"
