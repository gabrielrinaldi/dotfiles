network_down=(
  icon.color="$GREEN"
  icon.highlight_color="$BLUE"
  icon=""
  label.font="$FONT:Bold:10"
  update_freq=1
  y_offset=-6
)

network_up=(
  background.padding_right=-64
  icon.color="$GREEN"
  icon.highlight_color="$BLUE"
  icon=""
  label.font="$FONT:Bold:10"
  script="$PLUGINS_DIR/network/script.sh"
  update_freq=1
  y_offset=6
)

sketchybar --add item network.down right \
  --set network.down "${network_down[@]}" \
  --add item network.up right \
  --set network.up "${network_up[@]}"
