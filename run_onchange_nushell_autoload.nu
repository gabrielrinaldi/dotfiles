#!/opt/homebrew/bin/nu

# Create autoload directories
mkdir ($nu.data-dir | path join "vendor/autoload")

# Nu Scripts
## Aliases
let aliases_path = ($nu.data-dir | path join "vendor/autoload/aliases.nu")
echo "" | save -f $aliases_path
for $alias_name in (ls -a ($nu.data-dir | path join "nu_scripts/aliases/**/*.nu" | into glob) | get name) {
    echo $"source ($alias_name)\n" | save aliases_path --append --raw
}

## Completions
let completions_path = ($nu.data-dir | path join "vendor/autoload/completions.nu")
echo "" | save -f $completions_path
for $completion in (ls -a ($nu.data-dir | path join "nu_scripts/custom-completions/**/*.nu" | into glob) | get name) {
  echo $"source ($completion)\n" | save completions_path --append --raw
}

# Tools
## Atuin
atuin init nu | save -f ($nu.data-dir | path join "vendor/autoload/atuin.nu")

## Mise
mise activate nu | save -f ($nu.data-dir | path join "vendor/autoload/mise.nu")


## Starship
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

