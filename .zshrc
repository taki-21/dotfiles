# alias
alias ls='ls --color -hF'
alias ll='ls --color -hFl'
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias zshconfig="vim ~/.zshrc"
alias g='git'
alias gg="git grep -In"
alias k='kubectl'
alias kn='kubens'

# Use Git provided by Homebrew
export PATH=/usr/local/bin/git:$PATH

export LSCOLORS=gxfxcxdxbxegedabagacad

# Prevent `less` from starting
export GIT_PAGER=

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ripgrep
alias rg="rg --hidden --ignore-case --color always --no-heading --line-number"

eval "$(starship init zsh)"

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# git completions
fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)

# completion
autoload -Uz compinit
compinit
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


function awssso () {
  aws sso login --sso-session shirushi
	$(cat ~/.aws/config| grep "\[profile" | sed -r -e 's/\[profile (.*)\]/\1/' | fzf | xargs -I{} bash -c "echo export AWS_PROFILE={}")
}
source <(kubectl completion zsh)
