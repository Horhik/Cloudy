local resetColor="%{$reset_color%}"
local cloud="☁a "
local dir="%{$fg_bold[red]%}%c$resetColor$resetColor"

timewarrior_info(){
  echo $(timew get dom.active.duration)
}

PROMPT='☁  $dir $(git_prompt_info)'

RPROMPT='$(echo %{$fg_bold[yellow]%} $(timew get dom.active.tag.1)) %{$fg_bold[yellow]%}⌚ %{$fg[cyan]%}$(timewarrior_info)%{$FG[012]%'

ZSH_THEME_GIT_PROMPT_PREFIX="at %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$resetColor "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ❌ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✅ "
