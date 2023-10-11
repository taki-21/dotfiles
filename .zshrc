# alias
alias ls='ls --color -hF'
alias ll='ls --color -hFl'
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias zshconfig="vim ~/.zshrc"

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
alias rg="rg --hidden"

eval "$(starship init zsh)"

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
