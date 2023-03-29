# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#

# Check if zplug is installed

if [[ ! -d ~/.zplug ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

export NVM_LAZY_LOAD=true
export NVM_NO_USE=true
export NVM_AUTO_USE=true

zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/zsh-navigation-tools", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "Tarrasch/zsh-bd"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/maven", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/tig", from:oh-my-zsh
# zplug "plugins/docker", from:oh-my-zsh
# zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "lukechilds/zsh-nvm"
zplug "matthieusb/zsh-sdkman"
zplug "MichaelAquilina/zsh-autoswitch-virtualenv"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export GO111MODULE=auto
export GOPATH=/Users/wylyeak/work/workspace/gopath
export TERM=xterm-256color
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export MAVEN_OPTS='-XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=512m -Xms10240m -Xmx10240m'
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/usr/local/bin:$GOPATH/bin:$PATH"

alias gu='git pull --prune'
alias gm='git merge --no-commit'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
