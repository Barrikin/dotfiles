#File listing
alias ll='ls -l'
alias la='ls -Al'
alias l='ls -CF'

#Git
alias gti='git'
alias glog='git log --oneline --graph --color --all --decorate'

#Others
alias diff='colordiff'
alias ip='ip --color=auto'
alias tmux='tmux -2'
alias less='less -R'
alias dc='cd'
alias _='sudo'

#OSINT tools
alias igdown='$HOME/.local/bin/instaloader +$HOME/OSINT-TOOLS/Instagram/args.txt'
alias igcount='python3 $HOME/OSINT-TOOLS/Instagram/instagram.py && find .  -type f | grep -o ".[^.]\+$" | sort | uniq -c >> counts.txt'
