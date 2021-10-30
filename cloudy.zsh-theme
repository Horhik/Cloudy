local resetColor="%{$reset_color%}"
local dir="%{$fg_bold[red]%}%c$resetColor$resetColor"

timewarrior_time(){
  echo `timew get dom.active.duration`
}

timewarrior_name(){
  echo $(timew get dom.active.tag.$(timew get dom.active.tag.count))
}
timewar(){
  kek="There is no active time tracking."
  if [[ `timew` = $kek  ]]; then
  if [ -f /tmp/twworks ]; then 
    rm /tmp/twworks 
  fi
    echo "%{$fg_bold[red]%} No task tracking"  
  else
    touch /tmp/twworks
    echo "%{$fg_bold[yellow]%} $(timewarrior_name)  %{$fg_bold[yellow]%}⌚ %{$fg[cyan]%}$(timewarrior_time)%{$FG[012]%"
  fi
}

calm=('🍵' '🫖' '🎸' '🚬')
work=('💻' '💪' '🧘' '🏃' '🧪')

get_stat(){
  if [ -f /tmp/twworks ]; then
      echo `print -r -- "$work[RANDOM % $#work + 1]"`
    else
      echo `print -r -- "$calm[RANDOM % $#calm + 1]"`
    fi
  }

PROMPT='$(get_stat)$dir $(git_prompt_info)'

RPROMPT='$(timewar)'

ZSH_THEME_GIT_PROMPT_PREFIX="at %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$resetColor "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ❌ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✅ "
