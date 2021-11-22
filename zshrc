# Fig
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh

# Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Aliases
source $HOME/.dotfiles/aliases.zsh

# Antigen
source $HOME/.dotfiles/antigen.zsh

# Load oh-my-zsh's library
antigen use oh-my-zsh

# Other plguins
antigen bundle zdharma/fast-syntax-highlighting

# Ejson keys
export EJSON_KEYDIR="$HOME/.keys"

if [[ "$OSTYPE" == "darwin"* ]]; then
  # GitHub API Key
  source $HOME/.gitkey

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/subl -w"
  export GIT_EDITOR="/usr/local/bin/subl -w"

  # QMK
  export QMK_HOME="~/.qmk"

  # Direnv
  eval "$(direnv hook zsh)"

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Google Cloud SDK
  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

  # Load oh-my-zsh's plugins
  antigen bundle brew
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Starship config
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml
eval "$(starship init zsh)"

# Fig
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh

# Apply antigen
antigen apply
