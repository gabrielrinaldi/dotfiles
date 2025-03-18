if status is-interactive
    # Homebrew
    abbr --add brewup 'brew upgrade'

    # Eza
    abbr --add l 'eza -labh --icons auto --group-directories-first --git --time-style relative --no-permissions --no-user'
    abbr --add ll 'eza -labh --icons auto --group-directories-first --git --time-style relative'
    abbr --add lt 'eza -labh --icons auto --group-directories-first --git --no-permissions --no-user'
    abbr --add llt 'eza -labh --icons auto --group-directories-first --git'
    abbr --add tree 'eza -Ta --icons --ignore-glob=".git|.DS_Store"'
    abbr --add llt 'eza -TaD --icons --ignore-glob=".git|.DS_Store"'

    # Git
    abbr --add ga 'git add'
    abbr --add gaa 'git add --all'
    abbr --add gb 'git branch'
    abbr --add gc 'git commit'
    abbr --add gc! 'git commit --verbose --amend'
    abbr --add gcb 'git checkout -b'
    abbr --add gcn! 'git commit --verbose --no-edit --amend'
    abbr --add gco 'git checkout'
    abbr --add gg lazygit
    abbr --add ggpush 'git push origin "$(git_current_branch)"'
    abbr --add ghpr 'gh pr create --fill'
    abbr --add gpr 'git pull --rebase --autostash'
    abbr --add gst 'git status'
    abbr --add gsth 'git stash --all'
    abbr --add gstp 'git stash pop'

    # Paths
    abbr --add config '~/.config/'
    abbr --add local '~/.local/'
end
