# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi # some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
   # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
   # PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profiles
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
export PERL_LIB="~/lib/"
export VISUAL="/usr/bin/vim"
export EDITOR="/usr/bin/vim"
export HEY_BORDERS=" --  ----"
alias "wmail"="/usr/bin/tsocks /usr/bin/fetchmail -v ; /usr/bin/mutt -y"
alias "mail"="/usr/bin/mutt -y"
alias "sl"="/bin/ls --color"
alias "ll"="/bin/ls -lh --color"
alias "la"="/bin/ls -a --color"
alias "camac"="ssh brennc32@camac.dcu.ie"
alias "useradm"="/srv/admin/scripts/rrs/useradm"
alias "nmail"="mail -z"
alias "remiel"="tsocks ssh cian@85.17.93.2"
alias "nm"="/usr/bin/mutt -yZ"
alias "ca"="ssh lil_cain@136.206.15.1"
alias "bored"="nm; slrn"
alias "mu"="ssh lil_cain@136.206.15.14"
alias "mi"="ssh lil_cain@136.206.15.21"
alias "de"="ssh cian@136.206.15.3"
alias "cy"="ssh lil_cain@136.206.15.23"
alias "se"="ssh cian@136.206.15.22"
alias "we"="ssh lil_cain@192.168.0.7"
alias "mo"="ssh lil_cain@136.206.15.2"
alias "vim"="vim -X"
alias "search"="~receive/bin/search"
alias "idlers"="~phaxx/idlers"
alias "whohey"="~phaxx/whohey"
alias ":o"="vim -X"
alias ":wq"=":"
alias "LS"="ls"
alias "info"="info --vi-keys"
set -o emacs
#export GEM_HOME="$HOME/gems"
#export GEM_PATH="HOME/gems:/usr/lib/ruby/gems/1.8/"
export PATH="$PATH:/usr/games"
export CVSROOT='~/src/cvsroot'
export HTTP_PROXY="http://proxy.dcu.ie:8080"
export HTTPS_PROXY="http://proxy.dcu.ie:8080"

#This bit deals with murphy
#if [[ $(uname) == murphy ]]
#    then
#    export VISUAL="/opt/csw/bin/vim"
#    alias ls='/bin/ls'
#    alias ll="ls -l"
#    alias la="ls -al"
#    alias nm="mutt -yZ"
#fi
