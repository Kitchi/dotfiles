# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt appendhistory beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/krishna/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ----------------------------------
# Locally defined aliases
# ----------------------------------
alias vi=vim
alias lsbin='ls -R ~/bin'
alias chromium-tor='chromium --proxy-server="socks://localhost:9050"'
alias lt='ls -ltrh'
alias ls='ls --color=auto'


export XPA_METHOD=local # For ds9

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# zsh plugins
#source /home/krishna/.config/antibody/antibody.zsh
source "$HOME/.config/slimzsh/slim.zsh"

# -U makes sure only unique values in PATH
export -U PATH=$PATH:$HOME/bin/Python:$HOME/bin/Shell
# added by Anaconda3 2.4.0 installer
export -U PATH=/home/krishna/anaconda3/bin:$PATH

export -U PYTHONPATH=/home/krishna/src/pyradioastro:$PYTHONPATH
