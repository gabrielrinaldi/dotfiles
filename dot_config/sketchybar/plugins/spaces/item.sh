SPACE_ICONS=("󰇄" "" "󱁤")

sketchybar --add event aerospace_workspace_change

for ((i = (${#SPACE_ICONS[@]} - 1); i >= 0; i--)); do
  sid=$((i + 1))

  space=(
    icon="${SPACE_ICONS[i]}"
    icon.highlight_color="$BLUE"
    label.drawing=off
    click_script="aerospace workspace $sid"
    script="$PLUGINS_DIR/spaces/script.sh  $sid"
  )

  sketchybar --add item space."$sid" right \
    --subscribe space."$sid" aerospace_workspace_change \
    --set space."$sid" \
    "${space[@]}"
done
