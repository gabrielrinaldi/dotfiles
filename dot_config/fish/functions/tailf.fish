function tailf --description 'Tail logs with bat'
    tail -f $argv | bat --paging=never -l log
end
