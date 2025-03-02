cpu=(
  icon.color="$BLUE"
  icon="$CPU"
  label="..."
  script="$PLUGINS_DIR/cpu/script.sh"
  update_freq=2
)

sketchybar \
  --add item cpu.percent right \
  --set cpu.percent "${cpu[@]}"
