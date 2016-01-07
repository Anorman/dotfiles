alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias irc="tmux new-window -n irc \"ssh supakuman -t 'tmux attach'\""
alias tms="tmux attach -t"
alias tm='tmux switch -t "`tmux list-sessions | cut -d':' -f1 | fzy`"'

f(){ ag --nocolor -l -g "$1" "${2:-.}"  }
