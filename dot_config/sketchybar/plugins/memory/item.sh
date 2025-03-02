memory=(
  icon.color="$GREEN"
  icon=""
  label="..."
  script="$PLUGINS_DIR/memory/script.sh"
  update_freq=15
)

sketchybar --add item memory right \
  --set memory "${memory[@]}"
