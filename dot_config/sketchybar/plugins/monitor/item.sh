cpu=(
  background.padding_right=-40
  icon.color="$BLUE"
  icon="󰍛"
  label=""
  label.font="$FONT:Bold:10"
  script="$PLUGINS_DIR/monitor/cpu.sh"
  update_freq=1
  y_offset=6
)

memory=(
  icon.color="$GREEN"
  icon=""
  label=""
  label.font="$FONT:Bold:10"
  script="$PLUGINS_DIR/monitor/memory.sh"
  update_freq=15
  y_offset=-6
)

sketchybar \
  --add item monitor.memory right \
  --set monitor.memory "${memory[@]}" \
  --add item monitor.cpu right \
  --set monitor.cpu "${cpu[@]}"
