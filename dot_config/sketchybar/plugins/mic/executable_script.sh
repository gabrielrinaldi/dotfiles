#!/usr/bin/env bash
# shellcheck disable=SC1091

source "$HOME/.config/sketchybar/colors.sh"

MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')

if [[ $MIC_VOLUME -eq 0 ]]; then
  sketchybar -m --set mic icon=󰍭 icon.color="$RED"
elif [[ $MIC_VOLUME -gt 0 ]]; then
  sketchybar -m --set mic icon=󰍬 icon.color="$FLAMINGO"
fi
