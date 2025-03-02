calendar_date=(
  click_script="$PLUGIN_DIR/date/scripts/zen.sh"
  icon.color="$PEACH"
  icon="󰃮"
  label.font="$FONT:Bold:10"
  script="$PLUGINS_DIR/calendar/date.sh"
  update_freq=120
  y_offset=-6
)

calendar_clock=(
  background.padding_right=-77
  click_script="$PLUGIN_DIR/date/scripts/zen.sh"
  icon.color="$PEACH"
  icon="󰅐"
  label.font="$FONT:Bold:10"
  script="$PLUGINS_DIR/calendar/clock.sh"
  update_freq=15
  y_offset=6
)

sketchybar --add item calendar.date right \
  --subscribe calendar.date system_woke \
  --set calendar.date "${calendar_date[@]}"

sketchybar --add item calendar.clock right \
  --subscribe calendar.clock system_woke \
  --set calendar.clock "${calendar_clock[@]}"
