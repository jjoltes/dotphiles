
# Setup terminal, and turn on colors
export TERM=xterm-256color

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='leafpad'

# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

# Virtual Environment Stuff
export WORKON_HOME=$HOME/.virtualenvs

#juju
export JUJU_HOME=/local/jjoltes/centos/usr/install/juju

export LD_LIBRARY_PATH=~/lib
