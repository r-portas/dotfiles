# Aliases
# alias ls="ls -G" TODO: Fix me
alias svim="sudo -E vim"
alias rm="rm -v"
alias myip="curl -s http://ipecho.net/plain; echo"

# Tar related aliases
alias tarc="tar czvf"
alias tarx="tar xzvf"
alias tart="tar tzvf"

# Enable 256 bit colours
export TERM=xterm-256color

# Show git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Bash line
export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] [\[\e[34m\]\W\[\e[m\]]\[\e[32m\]\$(parse_git_branch)\[\e[m\]: "

