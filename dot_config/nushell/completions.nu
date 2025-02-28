# Helpers
def --env get-env [name] { $env | get $name }
def --env set-env [name, value] { load-env { $name: $value } }
def --env unset-env [name] { hide-env $name }

# Carapace
let carapace_completer = {|spans: list<string>|
  carapace $spans.0 nushell ...$spans
  | from json
  | if ($in | default [] | where value =~ '^-.*ERR$' | is-empty) { $in } else { null }
}

# Fish
mkdir ~/.config/fish/completions
mise completion fish | save -f ~/.config/fish/completions/mise.fish
let fish_completer = {|spans|
    fish --command $'complete "--do-complete=($spans | str join " ")"'
    | from tsv --flexible --noheaders --no-infer
    | rename value description
}

# Zoxide
let zoxide_completer = {|spans|
  $spans | skip 1 | zoxide query -l ...$in | lines | where {|x| $x != $env.PWD}
}

# Completer definition
let external_completer = {|spans|
  let expanded_alias = scope aliases
    | where name == $spans.0
    | get -i 0.expansion

  let spans = if $expanded_alias != null {
    $spans
      | skip 1
      | prepend ($expanded_alias | split row ' ' | take 1)
  } else {
    $spans
  }

  match $spans.0 {
    mise => $fish_completer
    nu => $fish_completer
    z | zi | __zoxide_z | __zoxide_zi => $zoxide_completer
    _ => $carapace_completer
  } | do $in $spans
}

# Set as completer
$env.config = {
  completions: {
    external: {
      enable: true
      completer: $external_completer
    }
  }
}
