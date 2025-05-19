#!/usr/bin/env bash

plugin_exists() {
  local plugin_name="$1"
  ya pack -l | grep -q "$plugin_name"
  return $?
}

# Array of plugins to install
plugins=(
  "AnirudhG07/plugins-yazi:copy-file-contents"
  "AnirudhG07/rich-preview"
  "Ape/open-with-cmd"
  "DreamMaoMao/fg"
  "GianniBYoung/rsync"
  "Reledia/glow"
  "ahkohd/eza-preview"
  "atareao/convert"
  "boydaihungst/restore"
  "boydaihungst/simple-tag"
  "gesellkammer/audio-preview"
  "h-hg/yamb"
  "hankertrix/augment-command"
  "imsi32/yatline"
  "imsi32/yatline-catppuccin"
  "imsi32/yatline-githead"
  "ndtoan96/ouch"
  "Reledia/miller"
  "yazi-rs/plugins:chmod"
  "yazi-rs/plugins:full-border"
  "yazi-rs/plugins:git"
  "yazi-rs/plugins:max-preview"
  "yazi-rs/plugins:mount"
  "yazi-rs/plugins:smart-filter"
)

# Install each plugin if it doesn't exist
for plugin in "${plugins[@]}"; do
  plugin_name=$(echo "$plugin" | cut -d':' -f2)
  if ! plugin_exists "$plugin_name"; then
    ya pack -a "$plugin"
  fi
done
