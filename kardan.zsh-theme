# Simple theme based on my old zsh settings.

if [ "$USER" = "root" ]
then
	PROMPT='%B%(?..[%?] )%b%{$fg_bold[red]%}>%{$reset_color%} '
else
	PROMPT='%B%(?..[%?] )%b> '
fi
RPROMPT='%{$fg[green]%}%~%{$reset_color%}@%{$fg[yellow]%}$(hostname)%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
