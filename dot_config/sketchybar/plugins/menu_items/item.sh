sketchybar --add alias "Control Center,FocusModes" right \
  --set "Control Center,FocusModes" \
  alias.color="$(getRandomCatColor)" \
  alias.scale=0.5 \
  icon.drawing=off \
  label.drawing=off \
  script="$PLUGINS_DIR/menu_items/script.sh" \
  update_freq=15 \
  updates=on

sketchybar --add alias "Tailscale,Item-0" right \
  --set "Tailscale,Item-0" \
  alias.color="$(getRandomCatColor)" \
  alias.scale=0.5 \
  icon.drawing=off \
  label.drawing=off

divider=(
  background.drawing=on
)

sketchybar --add bracket menu_items "Tailscale,Item-0" "Control Center,FocusModes" \
  --set menu_items "${divider[@]}"
