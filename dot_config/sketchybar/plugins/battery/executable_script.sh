#!/usr/bin/env bash
# shellcheck disable=SC1091

source "$HOME/.config/sketchybar/colors.sh"

BATT_COMMAND=$(pmset -g batt)
BATT_PERCENT=$(echo "$BATT_COMMAND" | grep -oE '[0-9]+%' | cut -d% -f 1)
CHARGING=$(echo "$BATT_COMMAND" | grep 'AC Power')

render_bar_item() {
  if [[ "$BATT_PERCENT" -lt 50 ]]; then
    sketchybar --set "$NAME" \
      label="$BATT_PERCENT%" \
      label.drawing=on \
      icon="$ICON" \
      icon.color="$COLOR"
  elif [[ ${CHARGING} != "" ]]; then
    sketchybar --set "$NAME" \
      label="" \
      label.drawing=off \
      icon="" \
      icon.drawing=off
  else
    sketchybar --set "$NAME" \
      label="" \
      label.drawing=off \
      icon="$ICON" \
      icon.color="$COLOR"
  fi
}

if [[ ${CHARGING} != "" ]]; then
  case ${BATT_PERCENT} in
  100) ICON="󰂅" COLOR="$GREEN" ;;
  9[0-9]) ICON="󰂋" COLOR="$GREEN" ;;
  8[0-9]) ICON="󰂊" COLOR="$GREEN" ;;
  7[0-9]) ICON="󰢞" COLOR="$GREEN" ;;
  6[0-9]) ICON="󰂉" COLOR="$YELLOW" ;;
  5[0-9]) ICON="󰢝" COLOR="$YELLOW" ;;
  4[0-9]) ICON="󰂈" COLOR="$PEACH" ;;
  3[0-9]) ICON="󰂆" COLOR="$PEACH" ;;
  2[0-9]) ICON="󰂆" COLOR="$RED" ;;
  1[0-9]) ICON="󰢜" COLOR="$RED" ;;
  *) ICON="󰢟" COLOR="$RED" ;;
  esac

  render_bar_item

  exit 0
fi

case ${BATT_PERCENT} in
100) ICON="󰁹" COLOR="$GREEN" ;;
9[0-9]) ICON="󰂂" COLOR="$GREEN" ;;
8[0-9]) ICON="󰂁" COLOR="$GREEN" ;;
7[0-9]) ICON="󰂀" COLOR="$GREEN" ;;
6[0-9]) ICON="󰁿" COLOR="$YELLOW" ;;
5[0-9]) ICON="󰁾" COLOR="$YELLOW" ;;
4[0-9]) ICON="󰁽" COLOR="$PEACH" ;;
3[0-9]) ICON="󰁼" COLOR="$PEACH" ;;
2[0-9]) ICON="󰁻" COLOR="$RED" ;;
1[0-9]) ICON="󰁺" COLOR="$RED" ;;
*) ICON="󰂃" COLOR="$RED" ;;
esac

render_bar_item
