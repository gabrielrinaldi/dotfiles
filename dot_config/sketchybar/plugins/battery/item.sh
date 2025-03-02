battery=(
  update_freq=1
  script="$PLUGINS_DIR/battery/script.sh"
)

sketchybar -m --add item battery right \
  --set battery "${battery[@]}"
