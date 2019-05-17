# use local git if installed (osx brew)
FILE=/usr/local/bin/git
if [ -f "$FILE" ]; then
    echo "Using $FILE"
    alias config='/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
else
    echo "Using /usr/bin/git"
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

