# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/share/antigen/antigen.zsh

export NVM_LAZY_LOAD=true
export NVM_NO_USE=true
export NVM_AUTO_USE=true

# Load the oh-my-zsh's library.

antigen use oh-my-zsh

antigen bundle git
antigen bundle tig
antigen bundle tig
antigen bundle zsh-navigation-tools
antigen bundle command-not-found
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle Tarrasch/zsh-bd
antigen bundle agkozak/zsh-z
antigen bundle lukechilds/zsh-nvm
antigen bundle matthieusb/zsh-sdkman

antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply


bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export GO111MODULE=auto
export GOPATH=/Users/wylyeak/work/workspace/gopath
export TERM=xterm-256color
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export MAVEN_OPTS='-XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=512m -Xms10240m -Xmx10240m'
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:/usr/local/bin:$GOPATH/bin:$PATH"

alias gu='git pull --prune'
alias gm='git merge --no-commit'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
