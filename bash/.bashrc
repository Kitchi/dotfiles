#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#export PS1="\e[1;35m\w>\e[m "

# ----------------------------------
# Locally defined aliases
# ----------------------------------
alias vi=vim
alias lsbin='ls -R ~/bin'
alias chromium-tor='chromium --proxy-server="socks://localhost:9050"'
# ----------------------------------
# Locally defined environment variables
# ----------------------------------
export homebin='/home/krishna/bin'
PATH=${PATH}:${HOME}/bin
PATH=${PATH}:${HOME}/bin/C
PATH=${PATH}:${HOME}/bin/Python
PATH=${PATH}:${HOME}/bin/Shell
export PATH
export XPA_METHOD=local # For ds9
export PYTHONPATH=/home/krishna/Programs/Python/

# ----------------------------------
# Voodoo for terminal colours
# ----------------------------------
alias grep='grep --color'
alias ls='ls --color=auto'
#export TERM=screen-256color   # 256 colour terminal, not 8

# ----------------------------------
# Nicer prompt
# ----------------------------------
ps1-prompt() {
    if test "$(whoami)" = root; then
        echo -n '+>'
    else
        echo -n '->'
    fi
}

PS1='\[\e[0;32m\]\W\[\e[m\] \[\e[0;31m\]`ps1-prompt`\[\e[m\] '
PS2='\[\e[0;31m\]>\[\e[m\] '

. /etc/profile.d/vte.sh  # So gnome terminal opens new window in pwd

# ----------------------------------
# Functions to set and unset proxy
# ----------------------------------
assignProxy() {
   PROXY_ENV="http_proxy ftp_proxy https_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY"
   for envar in $PROXY_ENV
   do
      export $envar=$1
   done
}
unsetProxy() {
   assignProxy ""    # This is what "unset" does
}

setProxy(){
   proxy_value="http://192.168.1.50:3128"
   assignProxy $proxy_value
}

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# added by Anaconda3 2.4.0 installer
export PATH="/home/krishna/anaconda3/bin:$PATH"
