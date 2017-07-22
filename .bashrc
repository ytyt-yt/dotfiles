#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -F --color=auto'
alias rm='rm -iv'
alias mv='mv -iv'
# alias cp='cp -iv'
alias ll='ls -hl'
alias lla='ls -hla'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

export EDITOR=vim


HISTCONTROL=ignoredups
HISTSIZE=10000
HISTFILESIZE=1000000

shopt -s histappend
shopt -s checkwinsize

stty -ixon -ixoff

[[ -s /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
[[ -s /etc/profile.d/autojump.bash ]] && . /etc/profile.d/autojump.bash


txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

_dir_chomp () {
  local IFS=/ c=1 n d
  local p=(${1/#$HOME/\~}) r=${p[*]}
  local s=${#r}
  while ((s>$2&&c<${#p[*]}-1))
  do
    d=${p[c]}
    n=1;[[ $d = .* ]]&&n=2
    ((s-=${#d}-n))
    p[c++]=${d:0:n}
  done
  echo "${p[*]}"
}

_parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1 /'
}

psclr=$bldcyn
[[ -n "$SSH_CLIENT" ]] && psclr=$bldgrn

PS1="\[$psclr\]"'$(_dir_chomp "$PWD" 20)'" \[$bldred\]\$(_parse_git_branch)\[$txtrst\]\\$ "
# PS1='[\u@\h \W]\$ '
