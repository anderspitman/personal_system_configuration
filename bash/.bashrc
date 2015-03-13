
source ~/git-prompt.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/opt/node/node-v0.10.29-linux-x64/bin"
export PATH="$PATH:/home/anders/android-studio/sdk/platform-tools"
export JAVA_HOME="/usr/lib/jvm/java-7-oracle"
alias ff="ssh admin@10.0.0.10"

# added by Anaconda 2.0.1 installer
#export PATH="/home/anders/anaconda/bin:$PATH"

export PATH="/home/anders/sbt/bin:$PATH"
export PATH="/home/anders/anaconda/bin:$PATH"

export NVM_DIR="/home/anders/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "/home/anders/.gvm/scripts/gvm" ]] && source "/home/anders/.gvm/scripts/gvm"

PS1="\[\e[1;35m\]\w \[\e[1;95m\]\[\e[1;33m\]\$(__git_ps1 '(%s) ')\[\e[1;31m\]->\[\e[0m\] "
