# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip brew django vi-mode github mercurial)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/avelino/.virtualenvs/pgs-deploy/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/opt/go/bin:/usr/local/mysql/bin
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/opt/go/bin:/usr/local/mysql/bin
# Path Python
export PATH=$PATH:/usr/local/Cellar/python/2.7.2/bin
export PATH=$PATH:/usr/local/share/python
# Path Port
export PATH=$PATH:/opt/local/bin

export WORKON_HOME=/Users/avelino/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh

export PATH=$PATH:/opt/go/bin
export GOROOT=/opt/go
export GOARCH=amd64
export GOOS=darwin

export C_INCLUDE_PATH=/Developer/SDKs/MacOSX10.7.sdk/usr/include/
export LIBRARY_PATH=/Developer/SDKs/MacOSX10.7.sdk/usr/lib
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/Cellar/boost/1.47.0/lib

# Search (CTR + R)
bindkey '^R' history-incremental-search-backward

# Command ZSH
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^H" backward-delete-word
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey '^i' expand-or-complete-prefix

alias tmux="TERM=screen-256color-bce tmux"
alias clear_pyc='find ./ -name "*.pyc" | xargs rm -v'
alias grep='ack'
alias sb='open -a "Sublime Text 2"'

export PATH=$PATH:/usr/local/pgsql/bin
export PATH=$PATH:/usr/local/Cellar/boost-jam/3.1.18/bin
