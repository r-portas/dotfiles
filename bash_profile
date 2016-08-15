# Aliases
alias svim="sudo -E vim"
alias rm="rm -v"
alias ip="curl -s http://ipecho.net/plain; echo"
alias webserver2="python -m SimpleHTTPServer 8000"
alias webserver3="python3 -m http.server 8000"

# Tar related aliases
alias tarc="tar czvf"
alias tarx="tar xzvf"
alias tart="tar tzvf"


# Enable 256 bit colours
export TERM=xterm-256color

# Load extra bash profiles for OS
# TODO: Add Windows types
case "$OSTYPE" in
    solaris*)
        echo "Solaris / EAIT SmartOS Zone host detected"
        ;;
    darwin*)
        echo "OSX host detected"
        source ~/dotfiles/mac/mac_profile
        ;;
    linux*)
        echo "Linux host detected"
        ;;
    msys*)
        echo "Windows host detected"
        source ~/dotfiles/windows/windows_profile
        ;;
esac

# Show git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Bash line
export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] [\[\e[34m\]\W\[\e[m\]]\[\e[32m\]\$(parse_git_branch)\[\e[m\]: "

