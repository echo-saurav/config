# plugin manager
source $HOME/.antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# load and install plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
# Tell Antigen that you're done.
antigen apply

ZSH_CUSTOM="$HOME/.zshCustom/"
#ZSH_THEME="robbyrussell" 
ZSH_THEME="my-theme"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/.local/bin
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# editor
export VISUAL=nvim;
export EDITOR=nvim;

# Download dir
export audioDownloadDir="$HOME/Musics/"
export videoDownloadDir="$HOME/Movies/"
export documentDownloadDir="$HOME/Documents/"
export downloadDir="$HOME/Downloads/"

# obsidian vars
export obsidianDir="$HOME/ObsidianVault"
export webpagesDir="$obsidianDir/Webpages/"
export mediaDir="$obsidianDir/media"
export inboxDir="$obsidianDir/inbox"
export bookmarkFile="$obsidianDir/bookmark.md"
export FZF_BASE=/usr/bin/fzf
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# all the functions___________________________________________________
#setopt PROMPT_SUBST

## Show current git branch in prompt.
#function parse_git_branch {
	#git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}

#calculator
function = () {
	local IFS=' '
	local calc="${*//p/+}"
	calc="${calc//x/*}"
	bc -l <<<"scale=10;$calc"
}

# add color globally colors
source $HOME/.cache/wal/colors.sh

# prompt
#PS1="%S %~ $(parse_git_branch) > %s "
#PS1="$(parse_git_branch)|%~ > "
#ZSH_THEME="robbyrussell"
# commands aliases
alias vim=nvim
# someday i will fix this with fzf file search ?!!
#alias locate="updatedb ; locate "
#
# make dir if do not exist
alias mkdir="mkdir -v -p"
alias c="clear "
alias r="ranger "
# add package description for future ref

alias sxiv="sxiv -a" # autoplay gif files


# cd to folder aliases
alias sr="cd ~/scripts"
alias h="cd ~/"
alias hdd="cd /mnt/hdd/ironman"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# ohmyzsh plugins
plugins=(
	sudo
)

source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions config
ZSH_AUTOSUGGEST_STRATEGY=(history)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=false

# man page completion
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select

# fix for double commands showing when autocomplate history
export LC_ALL=en_US.UTF-8

# abbr
## declare a list of expandable aliases to fill up later
typeset -a ealiases
ealiases=()

# write a function for adding an alias to the list mentioned above
function abbr() {
    alias $1
    ealiases+=(${1%%\=*})
}

# expand any aliases in the current line buffer
function expand-ealias() {
    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle magic-space
}
zle -N expand-ealias

# Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
bindkey ' '        expand-ealias
bindkey '^ '       magic-space     # control-space to bypass completion
bindkey -M isearch " "      magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-alias-and-accept-line() {
    expand-ealias
    zle .backward-delete-char
    zle .accept-line
}
zle -N accept-line expand-alias-and-accept-line

# abbr list
abbr cf="cd ~/.config"
abbr pi="ping google.com"
abbr cmx="chmod +x "
# confi file abbribiation
abbr i3="vim $HOME/.config/i3/config"
abbr po="vim ~/.config/polybar/config"
abbr qu="vim ~/.config/qutebrowser/config.py"
abbr rn="vim ~/.config/ranger/rc.conf"
abbr nc="vim ~/.config/ncmpcpp/config"
abbr bsh="vim ~/.bashrc"
abbr vr="vim ~/.config/nvim/init.vim"
abbr zs="vim ~/.zshrc"
abbr bs="vim ~/.config/bspwm/bspwmrc"
abbr sx="vim ~/.config/sxhkd/sxhkdrc"
abbr sc="~/scripts"

# ibus setup
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# start gui after login_______________________________________
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	echo "Starting gui in 3sec..."
	sleep 3;exec startx
fi



