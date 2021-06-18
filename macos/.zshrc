export ZSH="/Users/audun/.oh-my-zsh"

eval $(thefuck --alias)

ZSH_THEME="agnoster"
plugins=(aws git kubectl thefuck poetry zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ll='ls -l'
PATH=$PATH:/usr/local/bin:/Users/audun/bin
PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin
PATH=$PATH:/Users/audun/Tools/apache-maven-3.6.2/bin
PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH

alias nuget="mono /usr/local/bin/nuget.exe"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

alias getkey='cat vault.key | openssl rsautl -decrypt -inkey /Users/audun/.ssh/ansible_key'

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/bin:/Users/audun/bin:/Library/Frameworks/Mono.framework/Versions/Current/bin:/Users/audun/Tools/apache-maven-3.6.2/bin:/usr/local/share/dotnet:/usr/local/go/bin"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

export AWS_PROFILE=saml

alias get-identity='aws sts get-caller-identity'
alias fck='fuck'
export HISTORY_IGNORE="(cat|AWS|SECRET|KEY|base64|secret|export)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(starship init zsh)"
