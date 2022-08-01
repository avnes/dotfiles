export ZSH="/Users/ane/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git kubectl poetry zsh-autosuggestions kubectx)

source $ZSH/oh-my-zsh.sh

alias ll='ls -l'

PATH="$PATH:/usr/local/bin:/Users/audun/bin:/Users/ane/homebrew/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH

eval "$(/Users/ane/homebrew/bin/brew shellenv)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

alias getkey='cat vault.key | openssl rsautl -decrypt -inkey /Users/ane/.ssh/ansible_key'

export PATH="$HOME/.poetry/bin:$PATH"

export HISTORY_IGNORE="(cat|AWS|SECRET|KEY|base64|secret|export)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias python=python3

eval "$(starship init zsh)"

command -v flux >/dev/null && . <(flux completion zsh) && compdef _flux flux

KUBECONFIG=/Users/ane/.kube/volantis.config:/Users/ane/.kube/docker-desktop.config; export KUBECONFIG

alias kx='kubectx'
alias kxv='kubectx volantis-admin'
alias kxd='kubectx docker-desktop'
alias yolo='git add -A && git commit -a -m "$(curl --silent --fail http://whatthecommit.com/index.txt)"'

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
