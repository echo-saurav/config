
# load resrourse file
xrdb ~/.Xresources 

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# fish shell
# fish

HISTSIZE= 
HISTFILESIZE=
## Make Bash append rather than overwrite the history on disk:
shopt -s histappend
export PROMPT_COMMAND='history -a;history -r'

export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/.local/bin

# for android studio
export JDK_HOME=/usr/lib/jvm/java-8-openjdk/

export JAVA_HOME=${JDK_HOME}

export PATH=$PATH:${JAVA_HOME}/bin 

export PS1="\[\e[42;1;41m\]\w \$(parse_git_branch)> \[\e[0m\]"
export PROMPT_DIRTRIM=3

export _JAVA_AWT_WM_NONREPARENTING=1

#avoid duplicate entries in .bash_history
export HISTCONTROL=ignoredups


# vim keybinding 
#set -o vi

# Show current git branch in prompt.
function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# calculator
=() {
    local IFS=' '
    local calc="${*//p/+}"
    calc="${calc//x/*}"
    bc -l <<<"scale=10;$calc"
}

alias vim=nvim
#alias locate="updatedb ; locate "
alias mkdir="mkdir -v -p"
alias rm="rm -r -v"
alias c="clear "
alias r=" . ranger ~/Downloads"
alias ls="ls --color"

alias cf="cd ~/.config"
alias bs="vim ~/.config/bspwm/bspwmrc"
alias sx="vim ~/.config/sxhkd/sxhkdrc"
alias po="vim ~/.config/polybar/config"
alias qu="vim ~/.config/qutebrowser/config.py"
alias rn="vim ~/.config/ranger/rc.conf"
alias nc="vim ~/.config/ncmpcpp/config"
alias bsh="vim ~/.bashrc"
alias vr="vim ~/.config/nvim/init.vim"


alias sr="cd ~/scripts"
alias do="cd ~/downloads"
alias dc="cd ~/documents"
alias pi="cd ~/pictures"
alias ss="cd ~/screenshots"
alias mu="cd ~/music"
alias ho="cd ~/"
alias an="cd ~/AndroidStudioProjects"
alias hdd="cd /mnt/hdd/ironman"

#for color man page
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
