sketchybar --add item chevron left \
  --set chevron icon=󰘔 \
  icon.color="$PEACH" \
  label.drawing=off

sketchybar --add item application left \
  --set application \
  icon.drawing=off \
  script="$PLUGINS_DIR/applications/script.sh" \
  --subscribe application front_app_switched
