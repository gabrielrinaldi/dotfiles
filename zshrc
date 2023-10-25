# Command history configuration
HISTORY_SUBSTRING_SEARCH_PREFIXED=true

# Aliases
source $HOME/.dotfiles/aliases.zsh

# Antigen
source $HOME/.dotfiles/antigen.zsh

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

# Apply plugins
antigen apply

# Substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Enable 1Password
  export OP_BIOMETRIC_UNLOCK_ENABLED=true
  source $HOME/.config/op/plugins.sh
  
  # Load Homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # asdf
  . /opt/homebrew/opt/asdf/libexec/asdf.sh

  # Set my editor and git editor
  export EDITOR="/opt/homebrew/bin/subl -w"
  export GIT_EDITOR="/opt/homebrew/bin/subl -w"

  # Direnv
  eval "$(direnv hook zsh)"

  # LunarVim
  PATH=$PATH:$HOME/.local/bin:$HOME/.docker/bin
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Starship config
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml
eval "$(starship init zsh)"

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"
