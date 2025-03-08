#!/usr/bin/env bash
# shellcheck disable=SC1091

source "$HOME/.config/sketchybar/colors.sh"

MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')

if [[ $MIC_VOLUME -eq 0 ]]; then
  osascript -e 'set volume input volume 75'
  sketchybar -m --set mic icon=󰍬 icon.color="$FLAMINGO"
elif [[ $MIC_VOLUME -gt 0 ]]; then
  osascript -e 'set volume input volume 0'
  sketchybar -m --set mic icon=󰍭 icon.color="$RED":w
fi
