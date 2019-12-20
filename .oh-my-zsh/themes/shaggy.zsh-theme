# ZSH Theme
# Thanks to lukerandall, upon whose theme this is based

local return_code="%(?..%{$fg_bold[red]%}%? %{$reset_color%})"

function my_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  GIT_STATUS=$(git_prompt_status)
  [[ -n $GIT_STATUS ]] && GIT_STATUS=" $GIT_STATUS"
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$GIT_STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Vim [NORMAL] indicator taken from https://dougblack.io/words/zsh-vi-mode.html
function zle-line-init zle-keymap-select {
    VIM_NORMAL="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/}"
    zle reset-prompt
}

function print_jobs {
    count=$(jobs | wc -l)
    if (( count > 0 )); then
        printf " $count"
    fi
}

zle -N zle-line-init
zle -N zle-keymap-select

PROMPT='%{$fg_bold[cyan]%}[%n@%m]%{$reset_color%} %{$fg_bold[blue]%}{%3~}%{$reset_color%}%{$fg_bold[yellow]%}$(print_jobs)%{$reset_color%} $(my_git_prompt_info)%{$reset_color%}${return_code}%B$%b '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%%"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="!"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"

