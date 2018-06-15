alias lsl='ls -ltrah'

# A bit more informative show type, human readable, show all and show total row
alias df='df -Tha --total'

# More readable memory consumption
alias free='free -mh'

# Greps history
alias hgrep='history | grep'
# Greps full history from my bash_history rotation
alias hgrepful='function _hgrepful() { grep -ri $1 ~/.bash_history*; };_hgrepful'

alias greppi='grep -nri'
alias greppy='grep -nri --include "*.py"'
alias grepphp='grep -nria --include "*.php"'

# Alias to allow usage of IPython within virtualenvs
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# Start android studio
alias android-studio='/opt/android-studio/bin/studio.sh'

alias dev-kauppalista='cd ~/code/kauppalista/kauppalista-app && atom . && npm start'

# Usage watch-subp python3 -> lists processess starting python3 as parent process
alias watch-subp='function _watch_subp() { watch "ps aufx|grep -i -A 10 $1"; };_watch_subp'

# Remove untagged docker images
alias docker-rmi-untagged='docker rmi $(docker images -a | grep "^<none>" | awk "{print $3}")'

# Recursively unzip zipped files
alias unzip-recr='find . -name "*.zip" | while read filename; do unzip -o -d "`dirname "$filename"`" "$filename"; done;'

# git aliases
alias gp='git pull'
