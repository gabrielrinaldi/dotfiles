function tailb --description 'View logs with bat'
    tail $argv | bat -l log
end
