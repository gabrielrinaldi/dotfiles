if status is-interactive
    # Keybindings
    set -g fish_key_bindings fish_vi_key_bindings

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

    # Setup thefuck
    thefuck --alias | source

    # Setup AI
    source ~/.fish-ai/bin/activate.fish

    # Cursor
    set fish_cursor_default block
    set fish_cursor_insert underscore blink
    set fish_cursor_replace_one line blink
    set fish_cursor_replace line blink
    set fish_cursor_external block
    set fish_cursor_visual block

    # Greeting
    function fish_greeting
        fastfetch
    end
end
