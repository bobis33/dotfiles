dir() {
   echo "%{$fg[yellow]%}%2~%{$reset_color%}"
}

ok_prompt() {
    echo " %{$fg_bold[green]%}%B\u\u276f\u276f%b%{$reset_color%}"
}

err_prompt() {
    echo " %{$fg_bold[red]%}%B\u276f\u276f%b%{$reset_color%}"
}

prompt_indicator() {
   echo "%?%(?.$(ok_prompt).$(err_prompt))"
}
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%B"

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ☂%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} ✭%b"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} ☀%b"

ZSH_THEME_GIT_PROMPT_ADDED=" ✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED=" ⚡ "
ZSH_THEME_GIT_PROMPT_DELETED=" ✖ "
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED=" ♒ "
ZSH_THEME_GIT_PROMPT_AHEAD=" 𝝙 "

PROMPT=' $(dir)
 $(prompt_indicator) '
RPROMPT=' $(git_prompt_info)%{$fg[yellow]%}$(git_prompt_status) %{$reset_color%}%b%*%'
