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
  # EC2
  export JAVA_HOME="$(/usr/libexec/java_home)"
  export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
  export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
  export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"
  export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/subl -w"
  export GIT_EDITOR='/usr/local/bin/subl -w'

  # NVM
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Which plugins would you like to load?
  plugins=(aliases brew cp dirs gem gibo git mvn node npm nvm pod rbenv tmux tmuxinator vagrant)
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Which plugins would you like to load?
  plugins=(gem git rbenv)
fi

# Set name of the theme to load
ZSH_THEME="glean"

# How often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh