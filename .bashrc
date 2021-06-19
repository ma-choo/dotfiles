#
# ~/.bashrc
#

export PATH=$PATH:$HOME/.programs/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias x='startx'
alias bat='cat /sys/class/power_supply/BAT0/capacity'

alias rr='ranger'
alias viman='vim -R <(man $1)'

alias .intel='sudo vim /etc/X11/xorg.conf.d/20-intel.conf'
alias .synaptics='sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf'
alias .bash='vim ~/.bashrc'
alias .vim='vim ~/.vimrc'
alias .st='cd ~/.programs/src/st/git'
alias .dwm='cd ~/.programs/src/dwm/git'
alias .qtile='vim ~/.config/qtile/config.py'
alias .alacritty='vim ~/.config/alacritty/alacritty.yml'

alias ls='ls --color=auto'

# PS1="\u\[\033[34m\]@\h \[\033[35m\]\W\[\033[00m\] \$ "
# PS1="\u@\h \W\$(git_branch) \$ "
PS1="[\[\033[34m\]\u \[\033[35m\]\W\[\033[32m\]\$(git_branch)\[\033[34m\]\[\033[00m\]] "
