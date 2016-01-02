# Shortcuts
alias ducks='du -cksh * | sort -rn|head -11'
alias f='find . -iname'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias g='grep -i'
alias hlt='heroku logs --tail'
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"
alias hosts="sudo vim /etc/hosts"

# Postgresql
alias pg_start='pg_ctl -D /usr/local/var/postgres -l logfile start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Redis
alias rd_start='redis-server /usr/local/etc/redis.conf'

# Bower
alias bower='noglob bower'

# Pod
alias pi='pod install'
