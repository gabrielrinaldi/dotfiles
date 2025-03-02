#!/usr/bin/env bash

if [ "$1" = "$FOCUSED_WORKSPACE" ] || [ "$1" = "$(aerospace list-workspaces --focused)" ]; then
  sketchybar --set "$NAME" icon.highlight=on
else
  sketchybar --set "$NAME" icon.highlight=off
fi
