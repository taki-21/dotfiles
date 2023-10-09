# NOTE: Customized based on kolo.zsh-theme
autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green} +'
zstyle ':vcs_info:*' unstagedstr '%F{green} *'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:svn:*' branchformat '%b'
zstyle ':vcs_info:svn:*' formats ' (%b%F{1}:%F{11}%i%c%u%B%F{green})'
zstyle ':vcs_info:*' enable git svn

theme_precmd () {
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    zstyle ':vcs_info:git:*' formats ' (%b%c%u%F{green})'
  else
    zstyle ':vcs_info:git:*' formats ' (%b%c%u%F{red}*%F{green})'
  fi

  vcs_info
}

setopt prompt_subst
PROMPT='%F{red}%c%F{green}${vcs_info_msg_0_}%F{red} %{$reset_color%}$ '

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd
