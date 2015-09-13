# old plugins from omz for reference
#plugins=(git brew brew-cask macports pip python sublime sudo web-search wd osx \
#         chucknorris extract mfunc)

export ZSH=/Users/user/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh.git/

 #User Antigen to manage plugins
source ~/antigen.zsh


# plugins
#antigen bundle robbyrussell/oh-my-zsh lib/completion.zsh
#antigen bundle robbyrussell/oh-my-zsh lib/directories.zsh
antigen bundle robbyrussell/oh-my-zsh lib
antigen bundle git
antigen bundle brew
antigen bundle brew-cask
antigen bundle macports
antigen bundle pip
antigen bundle python
antigen bundle sublime
antigen bundle sudo
antigen bundle wd
antigen bundle osx
antigen bundle chucknorris
antigen bundle extract
antigen bundle hlohm/mfunc
antigen bundle zsh-users/zsh-syntax-highlighting

# theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# make it happen
antigen apply

# Set default user to hide user@host on local machine
DEFAULT_USER=user

# User configuration

# gimme dat zmv
autoload -U zmv

# powerlevel9k theme options
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M }"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_DIR_FOREGROUND='white'
# gotta get this working at some point :(
#POWERLEVEL9K_MODE='awesome-patched'

# force life to be colorful
TERM=xterm-256color

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# aliases
alias h="history"
alias zrc="vim ~/.zshrc"
alias szrc=" source ~/.zshrc"
alias tree="tree -C"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# clean up antigens mess in fpath
fpath=(`print -l $fpath | sort | uniq`)

# 1337 h4xx02 57uff
~/asciiboard.sh
