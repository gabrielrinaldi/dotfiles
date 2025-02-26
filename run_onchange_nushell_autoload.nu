#!/opt/homebrew/bin/nu

# Create autoload directories
mkdir ($nu.data-dir | path join "vendor/autoload")

# Nu Scripts
## Aliases
let aliases_path = ($nu.data-dir | path join "vendor/autoload/aliases.nu")
echo "" | save -f $aliases_path
for $alias_name in (ls -a ($nu.data-dir | path join "nu_scripts/aliases/**/*.nu" | into glob) | get name) {
    echo $"source ($alias_name)\n" | save $aliases_path --append --raw
}

## Completions
let completions_skip = ["auto-generate", "cargo-make", "npm-completions", "pass", "pdm", "yarn"]
let completions_path = ($nu.data-dir | path join "vendor/autoload/completions.nu")
echo "" | save -f $completions_path
for $completion in (ls -a ($nu.data-dir | path join "nu_scripts/custom-completions/*/*.nu" | into glob) | get name) {
  if not ($completions_skip | any { |pattern| $completion | str contains $pattern }) {
    echo $"source ($completion)\n" | save $completions_path --append --raw
  }
}

# Plugins
cargo install nu_plugin_desktop_notifications
register ~/.cargo/bin/nu_plugin_desktop_notifications

# Tools
## Atuin
atuin init nu | save -f ($nu.data-dir | path join "vendor/autoload/atuin.nu")

## Mise
mise activate nu | save -f ($nu.data-dir | path join "vendor/autoload/mise.nu")


## Starship
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

## Zoxide
zoxide init nushell | save -f ($nu.data-dir | path join "vendor/autoload/zoxide.nu")

