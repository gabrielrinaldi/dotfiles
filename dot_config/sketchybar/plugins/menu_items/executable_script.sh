#!/usr/bin/env bash

focus_status=$(defaults read com.apple.controlcenter "NSStatusItem Visible FocusModes")

if [ -n "$focus_status" ] && [ "$focus_status" -eq "1" ]; then
  sketchybar --set "Control Center,FocusModes" drawing=on
else
  sketchybar --set "Control Center,FocusModes" drawing=off
fi
