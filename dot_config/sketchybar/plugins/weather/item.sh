icon=(
  background.padding_right=-23
  icon.color="$SKY"
  icon=""
  icon.font="$FONT:Bold:22"
  label.drawing=off
  script="$PLUGINS_DIR/weather/script.sh"
  update_freq=60
  y_offset=6
)

label=(
  icon.drawing=off
  label=""
  label.font="$FONT:Bold:10"
  y_offset=-6
)

sketchybar \
  --add item weather.label right \
  --set weather.label "${label[@]}" \
  --add item weather.icon right \
  --set weather.icon "${icon[@]}"
