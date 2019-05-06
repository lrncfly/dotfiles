# use local git if installed (osx brew)
FILE=/usr/local/bin/git
if [ -f "$FILE" ]; then
    echo "Using $FILE"
    alias config='/usr/local/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
else 
    echo "Using /usr/bin/git"
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
fi

# fuzzy file
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

