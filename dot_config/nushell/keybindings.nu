# CLI AI command generator
{
    name: complete_with_gtp
    modifier: CONTROL
    keycode: Char_a
    mode: [emacs vi_normal vi_insert]
    event:[
        { send: executehostcommand,
        cmd: "commandline -r (python ($nu.default-config-dir | path join "completer.py") (commandline) | fzf --track --height 8)"
        }
        { send: Enter }
    ]
}
