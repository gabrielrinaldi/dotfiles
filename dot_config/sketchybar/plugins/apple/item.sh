POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

apple_logo=(
  icon="󰀵"
  icon.color="$PEACH"
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
)

apple_prefs=(
  icon=""
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=""
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_divider=(
  icon.drawing=off
  label.drawing=off
  background.color="$PEACH"
  background.height=1
  padding_left=8
  padding_right=8
  width=100
  background.drawing=on
)

apple_lock=(
  icon=""
  label="Lock Screen"
  click_script="osascript -e 'tell application \
              \"System Events\" to keystroke \"q\" \
                using {command down,control down}';
                $POPUP_OFF"
)

apple_logout=(
  icon="󰗽"
  label="Logout"
  click_script="osascript -e 'tell application \
              \"System Events\" to keystroke \"q\" \
                using {command down,shift down}';
                $POPUP_OFF"
)

apple_sleep=(
  icon="󰒲"
  label="Sleep"
  click_script="osascript -e 'tell app \"System Events\" to sleep'; $POPUP_OFF"
)

apple_reboot=(
  icon="󰜉"
  label="Reboot"
  click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'; $POPUP_OFF"
)

apple_shutdown=(
  icon="󰐥"
  label="Shutdown"
  click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'; $POPUP_OFF"
)

sketchybar --add item apple.logo left \
  --set apple.logo "${apple_logo[@]}" \
  \
  --add item apple.prefs popup.apple.logo \
  --set apple.prefs "${apple_prefs[@]}" \
  \
  --add item apple.activity popup.apple.logo \
  --set apple.activity "${apple_activity[@]}" \
  \
  --add item apple.divider popup.apple.logo \
  --set apple.divider "${apple_divider[@]}" \
  \
  --add item apple.sleep popup.apple.logo \
  --set apple.sleep "${apple_sleep[@]}" \
  \
  --add item apple.reboot popup.apple.logo \
  --set apple.reboot "${apple_reboot[@]}" \
  \
  --add item apple.shutdown popup.apple.logo \
  --set apple.shutdown "${apple_shutdown[@]}" \
  \
  --add item apple.divider2 popup.apple.logo \
  --set apple.divider2 "${apple_divider[@]}" \
  \
  --add item apple.lock popup.apple.logo \
  --set apple.lock "${apple_lock[@]}" \
  \
  --add item apple.logout popup.apple.logo \
  --set apple.logout "${apple_logout[@]}"
