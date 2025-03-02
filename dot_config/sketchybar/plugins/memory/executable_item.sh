#!/usr/bin/env bash

memory=(
  icon.color="$GREEN"
  icon="$MEMORY"
  label="..."
  script="$PLUGINS_DIR/memory/script.sh"
  update_freq=15
)

sketchybar \
  --add item memory right \
  --set memory "${memory[@]}"
