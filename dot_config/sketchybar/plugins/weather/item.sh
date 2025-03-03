weather=(
  icon.color="$BLUE"
  icon=""
  label=""
  script="$PLUGINS_DIR/weather/script.sh"
  update_freq=60
)

sketchybar \
  --add item weather right \
  --set weather "${weather[@]}"
