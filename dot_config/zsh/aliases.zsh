# Bat
alias cat=bat
alias fzf="fzf --preview \"bat --color=always --style=numbers --line-range=:500 {}\""

# Curl
alias curl=curlie

# Eza
alias ls="eza -labh --icons auto --group-directories-first --git --time-style relative --no-permissions --no-user"

# NeoVim
alias v="fd --type f | fzf-tmux -p --reverse | xargs nvim"
alias vi=nvim
alias vim=nvim

# OpnTofu
alias terraform=tofu

# Tailscale
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

