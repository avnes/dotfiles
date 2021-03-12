export ZSH="/Users/audun/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git kubectl zsh-autosuggestions)

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

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/projects
source /usr/local/bin/virtualenvwrapper.sh

alias getkey='cat vault.key | openssl rsautl -decrypt -inkey /Users/audun/.ssh/ansible_key'

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/bin:/Users/audun/bin:/Library/Frameworks/Mono.framework/Versions/Current/bin:/Users/audun/Tools/apache-maven-3.6.2/bin:/usr/local/share/dotnet"
