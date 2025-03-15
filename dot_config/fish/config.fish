if status is-interactive
    # Load homebrew
    eval "$(brew shellenv)"

    # Setup prompt
    starship init fish | source

    # Setup atuin
    atuin init fish | source

    # Theme
    fish_config theme save "Catppuccin Mocha"
end
