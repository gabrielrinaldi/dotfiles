if status is-interactive
    # Starship Prompt
    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience

    # Setup atuin
    atuin init fish | source

    # Setup zoxide
    zoxide init fish | source

    # Setup kubectl
    kubectl completion fish | source

    # Greeting
    function fish_greeting
        fastfetch
    end
end
