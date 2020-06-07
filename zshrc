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

# Load oh-my-zsh's plugins
antigen bundle asdf
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle heroku
antigen bundle kubectl
antigen bundle mix
antigen bundle npm
antigen bundle ssh-agent

# Other plguins
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# More completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Ejson keys
export EJSON_KEYDIR="$HOME/.keys"

if [[ "$OSTYPE" == "darwin"* ]]; then
  # GitHub API Key
  source $HOME/.gitkey

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/nvim -w"
  export GIT_EDITOR='/usr/local/bin/nvim -w'

  # Direnv
  eval "$(direnv hook zsh)"

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Google Cloud SDK
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

  # Load oh-my-zsh's plugins
  antigen bundle brew
  antigen bundle brew-cask
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  
fi

# Starship config
export STARSHIP_CONFIG=$HOME/.dotfiles/starship.toml
eval "$(starship init zsh)"

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Apply antigen
antigen apply
