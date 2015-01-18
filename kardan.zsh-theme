# Simple theme based on my old zsh settings.

REDPROMPT='%B%(?..[%?])%b%{$fg_bold[red]%}❯%{$reset_color%} '
GREENPROMPT='%B%(?..[%?])%b%{$fg_bold[green]%}❯%{$reset_color%} '
WHITEPROMPT='%B%(?..[%?])%b%{$fg_bold[white]%}❯%{$reset_color%} '
BLUEPROMPT='%B%(?..[%?])%b%{$fg_bold[blue]%}❯%{$reset_color%} '

function kardan_git_info() {
   ref=$(git symbolic-ref --short HEAD 2>/dev/null)
   [[ $ref != "" ]] && echo " [$ref]"
}

RPROMPT='%{$fg[green]%}%~%{$reset_color%}@%{$fg[yellow]%}%M%{$reset_color%}$(kardan_git_info)'

if [ "$USER" = "root" ]
then
   PROMPT=$REDPROMPT
else
   PROMPT=$GREENPROMPT
fi

