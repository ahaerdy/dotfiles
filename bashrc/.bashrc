#prompt with lines
# http://www.reddit.com/r/linux/comments/12wxsl/whats_in_your_bashrc/
# export PROMPT_COMMAND='q="- $(date +%T)"; while [[ ${#q} -lt $COLUMNS ]]; do q="${q:0:1}$q"; done; echo -e "\033[0;90m$q";'

# http://pastebin.com/bcsvkKVF
# PS1='\n \[\e[1;37m\]$(echo -e "\033(0lq\033(B")[\[\e[0m\] \[\e[1;36m\]\u \D{%F %a %T %p} \w\[\e[0m\]\n \[\e[1;37m\]$(echo -e "\033(0mq\033(B")[ --->\[\e[0m\] \[\e[1;32m\]'

# PS1='\e[${PROMPT_COLOR}\e[${PROMPT_COLOR2}\u@${PROMPT_HOSTNAME}\e[${PROMPT_COLOR}\[\e[1;30m\] - \[\e[34;1m\]\t\[\e[30;1m\] - \[\e[37;1m\]\w\[\e[30;1m\]\[\e[1;30m\] \nhist:\! \[\e[0;33m\] \[\e[1;31m\]$\[\e[1;32m\] '

PS1="\[\e[30;1m\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\t\[\e[30;1m\])-(\[\e[32;1m\]\w\[\e[30;1m\])\[\e[30;1m\]\nhist:\! \[\e[0;33m\] \[\e[1;31m\](jobs:\[\e[34;1m\]\j\[\e[30;1m\])\`if [ \$? -eq 0 ]; then echo \[\e[32m\] \:\-\); else echo \[\e[31m\] \:\-\( ; fi\`\[\e[0m\] $ "



prompt () {
    [[ $# = 1 ]] || exit 255
    mode="$1"

    case "$mode" in
    none)
        export PS1=""
        ;;
    off)
        export PS1="$ "
        ;;
    date)
        export PS1="[\t]\$ "
        ;;
    basic)
        export PS1="\u:\w$ "
        ;;
    full)
        export PS1="[\t]\u:\w$ "
        ;;
    esac
}

#prompt basic


#-------- BASH External Loading {{{
#------------------------------------------------------
# Bash Auto Completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

#Add Auto Complete to commands that dont work
if [ "$PS1" ]; then
	complete -cf sudo man
fi
#}}}
#-------- BASH Exports {{{
#------------------------------------------------------
shopt -s histappend	#Writes session to history on exit
shopt -s checkwinsize	#Check window on resize; for word wrapping
shopt -s autocd		# instead of 'cd Pictures', just run Pictures
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

# bind '"\C-O":"fzf-dmenu\n"'

## }}}






















fh() {
eval $(history | fzf +s | sed 's/ *[0-9]* *//')
}

bind '"\C-F":"fh\n"'	# fzf history






