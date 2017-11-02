#   Change Prompt
#   ------------------------------------------------------------
export PS1="\[\033[46;30m\]\u\[\033[40;97m\]@\[\033[42;30m\]\h:\[\033[103;30m\]\w\[\033[m\] >> "


#   Set Default Editor
#   ------------------------------------------------------------
export EDITOR=/usr/bin/vim


#   General Setup
#   ------------------------------------------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ls='ls -GFh'                          # Preferred standard 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias sizeof='du -hs'                       # sizeof:       Show the human-readable size of a file or directory
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
alias reload='source ~/.bash_profile'       # reload:       Reload bash environment


#   OS-Specific setup
#   ------------------------------------------------------------
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
    [ -r ~/.bashrc_macos ] && source ~/.bashrc_macos
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    [ -r ~/.bashrc_linux ] && source ~/.bashrc_linux
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    [ -r ~/.bashrc_win32 ] && source ~/.bashrc_win32
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    [ -r ~/.bashrc_win64 ] && source ~/.bashrc_win64
fi


#   User-specific setup
#   ------------------------------------------------------------
[ -r ~/.bashrc_user ] && source ~/.bashrc_user


#   General setup with OS and User bindings
#   ------------------------------------------------------------
command -v subl >/dev/null 2>&1 && alias edit='subl'   # edit:         Opens any file in sublime editor iff 'subl' is on the path
