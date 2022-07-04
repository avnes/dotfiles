export ZSH="/home/audun/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(aws git kubectl poetry kubectx zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

KUBECONFIG=/home/audun/.kube/volantis.config:/home/audun/.kube/playground.config; export KUBECONFIG

alias kx='kubectx'
alias kxv='kubectx volantis-admin'
alias kxp='kubectx playground'
alias yolo='git add -A && git commit -a -m "$(curl --silent --fail http://whatthecommit.com/index.txt)"'

export GOROOT=/usr/lib/golang
export GOPATH=$HOME/go

export AWS_PROFILE=saml

export EDITOR=vi
