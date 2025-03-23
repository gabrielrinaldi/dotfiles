#!/usr/bin/env bash

plugin_exists() {
  local plugin_name="$1"
  ya pack -l | grep -q "$plugin_name"
  return $?
}

# Array of plugins to install
plugins=(
  "AnirudhG07/plugins-yazi:copy-file-contents"
  "Reledia/glow"
  "ahkohd/eza-preview"
  "imsi32/yatline"
  "imsi32/yatline-githead"
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
