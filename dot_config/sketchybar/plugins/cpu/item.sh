cpu=(
  icon.color="$BLUE"
  icon="󰍛"
  label=""
  script="$PLUGINS_DIR/cpu/script.sh"
  update_freq=2
)

sketchybar \
  --add item cpu right \
  --set cpu "${cpu[@]}"
