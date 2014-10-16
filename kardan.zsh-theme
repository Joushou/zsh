# Simple theme based on my old zsh settings.

REDPROMPT='%B%(?..[%?])%b%{$fg_bold[red]%}❯%{$reset_color%} '
GREENPROMPT='%B%(?..[%?])%b%{$fg_bold[green]%}❯%{$reset_color%} '
WHITEPROMPT='%B%(?..[%?])%b%{$fg_bold[white]%}❯%{$reset_color%} '
BLUEPROMPT='%B%(?..[%?])%b%{$fg_bold[blue]%}❯%{$reset_color%} '

RPROMPT='%{$fg[green]%}%~%{$reset_color%}@%{$fg[yellow]%}%M%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"

if [ "$USER" = "root" ]
then
   PROMPT=$REDPROMPT
else
   PROMPT=$GREENPROMPT
fi

