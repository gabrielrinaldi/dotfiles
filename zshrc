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

# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# More completions
fpath=(/usr/local/share/zsh-completions $fpath)

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Set my editor and git editor
  export EDITOR="/usr/local/bin/subl -w"
  export GIT_EDITOR='/usr/local/bin/subl -w'

  # NVM
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Google Cloud SDK
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

  # Which plugins would you like to load?
  plugins=(adb aliases brew brew-cask bundler docker docker-compose gem git heroku node npm nvm pod rbenv tmux)
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Which plugins would you like to load?
  plugins=(gem git rbenv)
fi

# Powerline configuration
DEFAULT_USER='gabriel'
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir nvm rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vi_mode background_jobs time)

ZSH_THEME="powerlevel9k/powerlevel9k"

# How often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
