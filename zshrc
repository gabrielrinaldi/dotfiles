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
  # Java
  export JAVA_HOME="$(/usr/libexec/java_home)"

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/subl -w"
  export GIT_EDITOR='/usr/local/bin/subl -w'

  # NVM
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Which plugins would you like to load?
  plugins=(adb aliases aws brew brew-cask bundler colored-man-pages command-not-found cp gem gibo git heroku mvn node npm nvm pod rbenv z)
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Which plugins would you like to load?
  plugins=(gem git rbenv)
fi

# Set name of the theme to load
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir root_indicator vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws rbenv nvm)
ZSH_THEME="powerlevel9k/powerlevel9k"

# How often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
