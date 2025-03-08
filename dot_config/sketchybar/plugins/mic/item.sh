mic=(
  icon.color="$FLAMINGO"
  label.drawing=off
  script="$PLUGINS_DIR/mic/script.sh"
  click_script="$PLUGINS_DIR/mic/click.sh"
  update_freq=3
)

sketchybar --add item mic right \
  --set mic "${mic[@]}" \
  --subscribe mic volume_change
