export ZSH="/Users/ane/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git kubectl poetry zsh-autosuggestions kubectx)

source $ZSH/oh-my-zsh.sh

PATH="$PATH:/usr/local/bin:/Users/audun/bin:/Users/ane/homebrew/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH

eval "$(/Users/ane/homebrew/bin/brew shellenv)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

export PATH="/Users/ane/Library/Python/3.10/bin:$PATH"

export HISTORY_IGNORE="(cat|AWS|SECRET|KEY|base64|secret|export)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(starship init zsh)"

command -v flux >/dev/null && . <(flux completion zsh) && compdef _flux flux

KUBECONFIG=$(ls $HOME/.kube/*.config | tr '\n' ':')
export KUBECONFIG

alias ll='ls -l'
alias getkey='cat vault.key | openssl rsautl -decrypt -inkey /Users/ane/.ssh/ansible_key'
alias python=python3
alias kx='kubectx'
alias yolo='git add -A && git commit -a -m "$(curl --silent --fail http://whatthecommit.com/index.txt)"'

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/ane/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
