#!/usr/bin/env bash

cpu_percent=(
  label.font="$FONT:Bold:12"
  label="..."
  label.color="$TEXT"
  icon="$CPU"
  icon.color="$BLUE"
  update_freq=2
  script="$SCRIPTS_DIR/cpu.sh"
)

sketchybar --add item cpu.percent right --set cpu.percent "${cpu_percent[@]}"
