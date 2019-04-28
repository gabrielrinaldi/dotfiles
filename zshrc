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
  export EDITOR="/usr/local/bin/vim -w"
  export GIT_EDITOR='/usr/local/bin/subl -w'

  # NVM
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
  autoload -U add-zsh-hook
  load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }
  add-zsh-hook chpwd load-nvmrc
  load-nvmrc

  # Rbenv
  eval "$(rbenv init -)"

  # Exenv
  if which exenv > /dev/null; then eval "$(exenv init -)"; fi

  # Direnv
  eval "$(direnv hook zsh)"

  # PATH
  export PATH="/usr/local/sbin:$PATH"

  # Google Cloud SDK
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

  # Which plugins would you like to load?
  plugins=(aliases brew bundler docker docker-compose gem git heroku kubectl node nvm pod rails)
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
