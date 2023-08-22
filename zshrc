# Command history configuration
HISTORY_SUBSTRING_SEARCH_PREFIXED=true

# Antigen
source $HOME/.dotfiles/antigen.zsh

# Aliases
source $HOME/.dotfiles/aliases.zsh

# Load Oh-my-zsh
antigen use oh-my-zsh

# Load oh-my-zsh's plugins
antigen bundle git
antigen bundle command-not-found

# Other plguins
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

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
