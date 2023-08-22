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

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Enable 1Password
  export OP_BIOMETRIC_UNLOCK_ENABLED=true
  eval "$(op completion zsh)"; compdef _op op
  source $HOME/.config/op/plugins.sh

  # Load Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # asdf
  . /opt/homebrew/opt/asdf/libexec/asdf.sh

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/subl -w"
  export GIT_EDITOR="/usr/local/bin/subl -w"

  # Direnv
  eval "$(direnv hook zsh)"

  # LunarVim
  PATH=$PATH:~/.local/bin
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Starship config
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml
eval "$(starship init zsh)"

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"
