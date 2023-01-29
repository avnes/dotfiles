export ZSH="/home/audun/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(aws git kubectl poetry kubectx zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

KUBECONFIG=$(ls $HOME/.kube/*.config | tr '\n' ':')
export KUBECONFIG

alias kx='kubectx'
alias yolo='git add -A && git commit -a -m "$(curl --silent --fail https://whatthecommit.com/index.txt)"'

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source <(helm completion zsh)

export EDITOR=vi
