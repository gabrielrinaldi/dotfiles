memory=(label.font="$FONT:Heavy:12"
  label.color="$TEXT"
  icon="$MEMORY"
  icon.font="$FONT:Bold:16.0"
  icon.color="$GREEN"
  update_freq=15
  script="$SCRIPTS_DIR/ram.sh"
)

sketchybar --add item memory right --set memory "${memory[@]}"
