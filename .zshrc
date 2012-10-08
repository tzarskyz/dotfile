# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="risto"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git github python django pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/share/python

# Python Set
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/share/python/virtualenvwrapper.sh

# Java Set 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_32-b05-420.jdk/Contents/Home

# PostgreSQL
export PGDATA='/usr/local/var/postgres/'

# Oracle
export ORACLE_HOME=/usr/local/var/instantclient_10_2
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME

# Alias
alias sb='open -a "Sublime Text 2"'
alias grep='ack'
alias tmux="TERM=screen-256color-bce tmux"
# alias mongod="mongod run --config /usr/local/etc/mongod.conf"

# AWS Amazon
# export AWS_CREDENTIAL_FILE=$HOME/.aws/aws_credential_file
export EC2_CERT=$HOME/Dropbox/nodegrid/pem/cert-3F6JNV5BIYQ3ENQWM4NS3QPABF42FRF7.pem
export EC2_PRIVATE_KEY=$HOME/Dropbox/nodegrid/pem/pk-3F6JNV5BIYQ3ENQWM4NS3QPABF42FRF7.pem
export AWS_RDS_HOME=$HOME/Dropbox/nodegrid/aws/RDSCli-1.8.001
export PATH=$PATH:$AWS_RDS_HOME/bin/
export PATH=$PATH:$HOME/Dropbox/nodegrid/aws/elasticbeanstalk-cli/elasticbeanstalk-cli/bin

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
