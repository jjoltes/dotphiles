# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'

# -------------------------------------------------------------------
# search
# -------------------------------------------------------------------
alias grep='grep --color=auto --exclude-dir=".svn"'
alias ff='find . -name \!*:q -ls'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

alias dotfiles="cd /local/jjoltes/centos/code/.dotfiles"
alias pushdotfiles="pushd /local/jjoltes/centos/code/.dotfiles"

alias testsw="cd /projects/orion-vpu-exploration-missions_d1334/software/test_sw"
alias pushtestsw="pushd /projects/orion-vpu-exploration-missions_d1334/software/test_sw"

alias localcentos="cd /local/jjoltes/centos"
alias pushlocalcentos="pushd /local/jjoltes/centos"

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
#alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)


# -------------------------------------------------------------------
# remote machines
# -------------------------------------------------------------------
alias 'win=xfreerdp --plugin cliprdr --no-nla -D -g 1680x1026 -d sei -u jjoltes eng-termserver.ad.seakr.com'

alias 'winfull=xfreerdp --plugin cliprdr --no-nla -D -g 3360x1026 -d sei -u jjoltes eng-termserver.ad.seakr.com'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias git-pull-oh-my-zsh='pushd ~/.dotfiles; git fetch oh-my-zsh master; git subtree pull --prefix .oh-my-zsh oh-my-zsh master --squash; popd'
alias git-pull-z='pushd ~/.dotfiles; git fetch z master; git subtree pull --prefix .zsh/z z master --squash; popd'

alias git-pull-all-subtrees='git-pull-oh-my-zsh; git-pull-z'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities 
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# -------------------------------------------------------------------
# Python virtualenv 
# -------------------------------------------------------------------
alias mkenv='mkvirtualenv'
alias on="workon"
alias off="deactivate"

# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias 'ttop=top -acu $USER -s -n30' # fancy top

# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

# alias to cat this file to display
alias acat='< ~/.zsh/aliases.zsh'
alias fcat='< ~/.zsh/functions.zsh'
alias sz='source ~/.zshrc'

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="gedit ~/.zshrc && reload"
