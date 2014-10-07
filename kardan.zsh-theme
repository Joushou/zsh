# Simple theme based on my old zsh settings.

function get_host {
	echo '@'`hostname`''
}

PROMPT='%B%(?..[%?] )%b> '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
