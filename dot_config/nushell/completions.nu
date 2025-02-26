# Helpers
def --env get-env [name] { $env | get $name }
def --env set-env [name, value] { load-env { $name: $value } }
def --env unset-env [name] { hide-env $name }

# Carapace
let carapace_completer = {|spans|
  carapace $spans.0 nushell ...$spans
    | from json
}

# Zoxide
let zoxide_completer = {|spans|
  $spans | skip 1 | zoxide query -l ...$in | lines | where {|x| $x != $env.PWD}
}

# Completer definition
let external_completer = {|spans|
  let expanded_alias = (scope aliases | where name == $spans.0 | get -i 0 | get -i expansion)

  let spans = (if $expanded_alias != null  {
    # put the first word of the expanded alias first in the span
    $spans | skip 1 | prepend ($expanded_alias | split row " " | take 1)
  } else {
    $spans | skip 1 | prepend ($spans.0)
  })

  match $spans.0 {
    __zoxide_z | __zoxide_zi => $zoxide_completer
    _ => $carapace_completer
  } | do $in $spans
}

# Set as completer
mut current = (($env | default {} config).config | default {} completions)
$current.completions = ($current.completions | default {} external)
$current.completions.external = ($current.completions.external
  | default true enable
  | default $external_completer completer)

$env.config = $current
