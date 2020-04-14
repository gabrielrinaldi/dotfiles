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
  # GitHub API Key
  source $HOME/.gitkey

  # Set my editor and git editor
  export EDITOR="/usr/local/bin/vim -w"
  export GIT_EDITOR='/usr/local/bin/subl -w'

  # Ejson keys
  export EJSON_KEYDIR="$HOME/.keys"

  # Direnv
  eval "$(direnv hook zsh)"

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Google Cloud SDK
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

  # Which plugins would you like to load?
  plugins=(aliases asdf brew docker docker-compose git heroku kubectl mix node zsh_reload)
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  # Path
  export PATH="$(yarn global bin):$PATH"

  # Which plugins would you like to load?
  plugins=(aliases git nvm tmux yarn)
fi

# Spaceship config
SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  git
  package
  node
  ruby
  elixir
  xcode
  swift
  golang
  docker
  aws
  kubecontext
  exec_time
  line_sep
  jobs
  exit_code
  char
)

ZSH_THEME="spaceship"

# How often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
