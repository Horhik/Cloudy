local resetColor="%{$reset_color%}"
local cloud="☁a "
local dir="%{$fg_bold[red]%}%c$resetColor$resetColor"

PROMPT='☁a $dir $(git_prompt_info)'
RPROMPT='$(echo $(timew get dom.active.duration) | sed 's/\(PT\)\(.*\)H\(.*\)M\(.*\)S/\2h:\3m:\4s/g')'

ZSH_THEME_GIT_PROMPT_PREFIX="at %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$resetColor "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ❌ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✅ "
