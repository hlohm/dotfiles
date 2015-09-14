export ZSH=/Users/user/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh.git/

# Use Antigen to manage plugins
source ~/antigen.zsh


# Load oh-my-zsh's library.
antigen use oh-my-zsh

# plugins
antigen bundle git
antigen bundle brew
antigen bundle brew-cask
antigen bundle macports
antigen bundle sudo
antigen bundle wd
antigen bundle osx
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

# force life to be colorful
TERM=xterm-256color

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -lAh'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# more aliases
alias h="history"
alias zrc="vim ~/.zshrc"
alias szrc=" source ~/.zshrc"
alias tree="tree -C"
alias gsha="git log -n 1 --pretty=format:"%H" | pbcopy"

# naming some directoires
mfdir=~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-hlohm-SLASH-mfunc.git
dotfiles=~/dotfiles
omz=~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh.git
code=~/code
py=~/code/python
web=~/code/web
shell=~/code/shell

# tell the shell about them
: ~mfdir ~dotfiles ~omz ~code ~py ~web ~shell

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# iTerm shell integration
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# 1337 h4xx02 57uff
~/asciiboard.sh
