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

# Colours
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

# Enable 256 bit colours
export TERM=xterm-256color

# Load extra bash profiles for OS
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

# A local connection (Not SSH) will have a green hostname
export HOST_COLOR=$COLOR_GREEN

# Check for a SSH connection
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    ssh_details=($SSH_CONNECTION)
    echo -e "${COLOR_RED}SSH: Client connected from ${ssh_details[0]}:${ssh_details[1]}${COLOR_NC}"

    # A SSH connection will be yellow
    export HOST_COLOR=$COLOR_RED
fi

# Show git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}

# Bash line
export PS1="${HOST_COLOR}\u@\h [${COLOR_BLUE}\W${COLOR_NC}] ${COLOR_GREEN}\$(parse_git_branch) ${COLOR_NC}"$"$ "
