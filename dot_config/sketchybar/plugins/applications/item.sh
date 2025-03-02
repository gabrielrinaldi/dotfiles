sketchybar --add item application.icon left \
  --set application.icon icon=󰘔 \
  icon.color="$PEACH" \
  label.drawing=off

sketchybar --add item application.name left \
  --set application.name \
  icon.drawing=off \
  script="$PLUGINS_DIR/applications/script.sh" \
  --subscribe application.name front_app_switched
