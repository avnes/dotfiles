export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git kubectl poetry zsh-autosuggestions kubectx thefuck)

source $ZSH/oh-my-zsh.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

PATH="$PATH:/usr/local/bin:/Users/$USER/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

export PATH="/Users/$USER/Library/Python/3.10/bin:$PATH"

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
alias getkey='cat vault.key | openssl rsautl -decrypt -inkey /Users/$USER/.ssh/ansible_key'
alias python=python3
alias kx='kubectx'
alias gas='go-aws-sso -p saml --persist'
alias yolo='git add -A && git commit -a -m "$(curl --silent --fail https://whatthecommit.com/index.txt)"'

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export EDITOR=vim
export AWS_PROFILE=saml

source <(helm completion zsh)

PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH=$PATH:/opt/homebrew/bin

source /opt/homebrew/opt/asdf/libexec/asdf.sh
