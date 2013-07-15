# Online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

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

# Custom path
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Enable bash completion
autoload bashcompinit
bashcompinit

# EC2
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

# Custom SSL certificates from Mozilla.org
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# Set my editor and git editor
export EDITOR="/usr/local/bin/subl -w"
export GIT_EDITOR='/usr/local/bin/subl -w'

# Set name of the theme to load
ZSH_THEME="glean"

# How often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Do you want red dots to be displayed while waiting for completion?
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(aliases brew dirs gem git pod rbenv)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
