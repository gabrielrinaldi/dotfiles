# Command history configuration
HISTORY_SUBSTRING_SEARCH_PREFIXED=true

# ZPM
if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
fi
source ~/.zpm/zpm.zsh

# Aliases
source $HOME/.dotfiles/aliases.zsh

# Load Oh-my-zsh
zpm load @omz

# Load oh-my-zsh's plugins
zpm load @omz/command-not-found,async
zpm load @omz/git

# Other plguins
zpm load zpm-zsh/zsh-history-substring-search,source:/zsh-history-substring-search.zsh,async
zpm load zpm-zsh/zsh-autosuggestions,async
zpm load zpm-zsh/zsh-completions,async
zpm load zdharma-continuum/fast-syntax-highlighting,async
zpm load zpm-zsh/core-config
zpm load zpm-zsh/ls,async
zpm load zpm-zsh/colorize,async
zpm load zdharma-continuum/history-search-multi-word,fpath:/,async
zpm load zpm-zsh/clipboard,async
zpm load zpm-zsh/pretty-time-zsh,async

# Substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Ejson keys
export EJSON_KEYDIR="$HOME/.keys"

# GPG
export GPG_TTY=$(tty)

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Load Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # asdf
  . /opt/homebrew/opt/asdf/libexec/asdf.sh

  # GitHub API Key
  source $HOME/.gitkey

  # Set my editor and git editor
  export EDITOR="/opt/homebrew/bin/subl -w"
  export GIT_EDITOR="/opt/homebrew/bin/subl -w"

  # Google Cloud SDK
  source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

  # Direnv
  eval "$(direnv hook zsh)"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Starship config
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml
eval "$(starship init zsh)"

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"
