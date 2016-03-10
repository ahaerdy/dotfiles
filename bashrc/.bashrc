#             _   _     _      _           _               _
#  __ _  ___ | |_| |__ | | ___| |_ _   _  | |__   __ _ ___| |__
# / _` |/ _ \| __| '_ \| |/ _ \ __| | | | | '_ \ / _` / __| '_ \
#| (_| | (_) | |_| |_) | |  __/ |_| |_| | | |_) | (_| \__ \ | | |
# \__, |\___/ \__|_.__/|_|\___|\__|\__,_| |_.__/ \__,_|___/_| |_|
# |___/
#
#       DESC: BASH Configuration
#
#       http://www.youtube.com/user/gotbletu
#       https://twitter.com/gotbletu
#       https://plus.google.com/+gotbletu
#       https://github.com/gotbletu
#       gotbletu@gmail.com




#prompt with lines
# http://www.reddit.com/r/linux/comments/12wxsl/whats_in_your_bashrc/
# export PROMPT_COMMAND='q="- $(date +%T)"; while [[ ${#q} -lt $COLUMNS ]]; do q="${q:0:1}$q"; done; echo -e "\033[0;90m$q";'

# http://pastebin.com/bcsvkKVF
# PS1='\n \[\e[1;37m\]$(echo -e "\033(0lq\033(B")[\[\e[0m\] \[\e[1;36m\]\u \D{%F %a %T %p} \w\[\e[0m\]\n \[\e[1;37m\]$(echo -e "\033(0mq\033(B")[ --->\[\e[0m\] \[\e[1;32m\]'

# PS1='\e[${PROMPT_COLOR}\e[${PROMPT_COLOR2}\u@${PROMPT_HOSTNAME}\e[${PROMPT_COLOR}\[\e[1;30m\] - \[\e[34;1m\]\t\[\e[30;1m\] - \[\e[37;1m\]\w\[\e[30;1m\]\[\e[1;30m\] \nhist:\! \[\e[0;33m\] \[\e[1;31m\]$\[\e[1;32m\] '
#-------- Color Bash Prompt {{{
#------------------------------------------------------
# {{{
#https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[10;95m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White
#}}}

# Bash Prompts 2012
#PS1="\[$BBlue\]\u \t \[$BWhite\]\w \n\[$BRed\]$\[$BGreen\] "

#  \n \[\e[1;37m\]+-[\[\e[1;36m\] \d \[\e[1;31m\]\T \[\e[1;37m\]] \n\[\e[1;37m\] +-[ \[\e[1;34m\]@ \[\e[1;32m\]\w \[\e[1;37m\]]\[\e[1;35m\]---> \[\e[0;37m\]


# Newest, use man strftime - Tron
#PS1="\n \[$BWhite\]+-[ \[$BCyan\]\u \D{%F %a %r} \w \n \[$BWhite\]+-[ ---> \[$BGreen\]"
#}}}

PS1="\[\e[30;1m\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\t\[\e[30;1m\])-(\[\e[32;1m\]\w\[\e[30;1m\])\[\e[30;1m\]\nhist:\! \[\e[0;33m\] \[\e[1;31m\](jobs:\[\e[34;1m\]\j\[\e[30;1m\])\`if [ \$? -eq 0 ]; then echo \[\e[32m\] \:\-\); else echo \[\e[31m\] \:\-\( ; fi\`\[\e[0m\] $ "



# prompt () {
#     [[ $# = 1 ]] || exit 255
#     mode="$1"
#
#     case "$mode" in
#     none)
#         export PS1=""
#         ;;
#     off)
#         export PS1="$ "
#         ;;
#     date)
#         export PS1="[\t]\$ "
#         ;;
#     basic)
#         export PS1="\u:\w$ "
#         ;;
#     full)
#         export PS1="[\t]\u:\w$ "
#         ;;
#     esac
# }
#
#prompt basic


fh() {
eval $(history | fzf +s | sed 's/ *[0-9]* *//')
}

bind '"\C-F":"fh\n"'	# fzf history


#-------- BASH External Loading {{{
#------------------------------------------------------
# autocompletion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# alias
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

# adds autoomplete to commands that dont work
if [ "$PS1" ]; then
	complete -cf sudo man
fi
#}}}
#-------- BASH Exports {{{
#------------------------------------------------------
# http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
shopt -s histappend	# append history not overwrite it
shopt -s checkwinsize	# check window on resize; for word wrapping
shopt -s autocd		# instead of 'cd Pictures', just run Pictures
shopt -s cdspell	# auto correct cd; cd /sur/src/linus' >> 'cd /usr/src/linux'
shopt -s cmdhist	# If set, Bash attempts to save all lines of a multiple-line command in the same history entry. This allows easy re-editing of multi-line commands.

HISTCONTROL=erasedups:ignoreboth
HISTSIZE=1000000
HISTFILESIZE=1000000
HISTIGNORE="&:ls:[bf]g:history:exit"  #ignore these commands from history

# setopt autocd
# appendhistory all your open shells share the same history which is handy if you want to refer commands from one shell in another with say Ctrl+R(reverse-history-search)
# extendedglob
# http://batsov.com/articles/2011/04/29/one-shell-to-rule-them-all/

#}}}
#-------- Keybinding {{{
#------------------------------------------------------
# movement and autocompeletion at the prompt
bind 'set completion-ignore-case on'	# case insensitive on tab completion
bind '"\t":menu-complete' 		# Tab: Cycle thru completion
bind '"\e[1;3D":backward-kill-word' 	# Alt + arrowleft : delete word backward
bind '"\e\e[D":backward-kill-word' 	# Alt + arrowleft : delete word backward
bind '"\e[1;3A":kill-whole-line' 	# Alt + arrowup : delete whole line
bind '"\e[1;3B":undo'			# Alt + arrowdown : undo
bind '"\e[1;5C":forward-word'		# Ctrl + arrowright : Jump a word forward
bind '"\e[1;5D":backward-word'		# Ctrl + arrowleft : Jump a word backward
bind '"\e[Z":menu-complete-backward'	# Shift+Tab: Cycle backwards
bind '"\e[A": history-search-backward'	# ArrowUp: history completion backwards
bind '"\e[B": history-search-forward'	# ArrowDown: history completion forward

# enable history verification:
# bang commands (!, !!, !?) will print to shell and not be auto executed
# http://superuser.com/a/7416
shopt -s histverify

# Bang! Previous Command Hotkeys
# print previous command but only the first nth arguments
# Alt+1, Alt+2 ...etc
# http://www.softpanorama.org/Scripting/Shellorama/bash_command_history_reuse.shtml#Bang_commands
bind '"\e1": "!:0 \n"'
bind '"\e2": "!:0-1 \n"'
bind '"\e3": "!:0-2 \n"'
bind '"\e4": "!:0-3 \n"'
bind '"\e5": "!:0-4 \n"'
bind '"\e`": "!:0- \n"'     # all but the last word

##


# bind '"\C-O":"fzf-dmenu\n"'

## }}}


# autocomplete surfraw bookmarks
# usage: srb <bookmark_name>
# _cmpl_surfraw() {
# 	reply=($(awk 'NF != 0 && !/^#/ {print $1}' ~/.config/surfraw/bookmarks | sort -n))
# }
# compctl -K _cmpl_surfraw srb
#

# http://fahdshariff.blogspot.com/2011/04/writing-your-own-bash-completion.html
# http://askubuntu.com/a/345150
# https://www.debian-administration.org/article/317/An_introduction_to_bash_completion_part_2
_cmpl_surfraw() {
	# reply=($(awk 'NF != 0 && !/^#/ {print $1}' ~/.config/surfraw/bookmarks | sort -n))
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(awk 'NF != 0 && !/^#/ {print $1}' ~/.config/surfraw/bookmarks | sort -n))
	# COMPREPLY=($(awk 'NF != 0 && !/^#/ {print $1}' ~/.config/surfraw/bookmarks | sort -n))
    # local cur=${COMP_WORDS[COMP_CWORD]}
    # COMPREPLY=( $(compgen -W "fooOption barOption" -- $cur) )
}
complete -F _cmpl_surfraw srb




