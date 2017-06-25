# Simple theme based on my old zsh settings.

zgen oh-my-zsh plugins/shrink-path

ARROW="❯"
if [[ "${TERM}" == "linux" ]]
then
   ARROW="►"
fi

function kardan_git_info() {
   [ "${COLUMNS}" -lt 90 ] && return
   ref="$(git symbolic-ref --short HEAD 2>/dev/null)"
   [[ "${ref}" != "" ]] && echo " [$ref]"
}

REDPROMPT='%{$fg_bold[red]%}${ARROW}%{$reset_color%} '
GREENPROMPT='%{$fg_bold[green]%}${ARROW}%{$reset_color%} '
YELLOWPROMPT='%{$fg_bold[yellow]%}${ARROW}%{$reset_color%} '
BLUEPROMPT='%{$fg_bold[cyan]%}${ARROW}%{$reset_color%} '

RPROMPT='%B%(?..[%?] )%b%{$fg[green]%}$(shrink_path -T -l)%{$reset_color%}@%{$fg[yellow]%}%M%{$reset_color%}$(kardan_git_info)'

if [ "$USER" = "root" ]
then
   PROMPT=$REDPROMPT
elif [ "${ISVM}" -eq 1 ]
then
   PROMPT=$YELLOWPROMPT
elif [ "${ISLOCAL}" -eq 1 ]
then
   PROMPT=$BLUEPROMPT
else
   PROMPT=$GREENPROMPT
fi

