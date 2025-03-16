# Set path
set PATH ~/.local/bin $PATH

# Environment
source $__fish_config_dir/env.fish

if status is-interactive
    # Load homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Setup prompt
    starship init fish | source

    # Setup atuin
    atuin init fish | source

    # Setup zoxide
    zoxide init --cmd cd fish | source

    # Theme
    # fish_config theme save "Catppuccin Mocha"

    # Greeting
    function fish_greeting
        fastfetch
    end
end
