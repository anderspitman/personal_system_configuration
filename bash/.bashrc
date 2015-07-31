
source ~/.git-prompt.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/opt/node/node-v0.12.3-linux-x64/bin"
export PATH="$PATH:/home/anders/android-studio/sdk/platform-tools"
export JAVA_HOME="/usr/lib/jvm/java-7-oracle"

alias skbio="cd ~/code/scikit-bio; source activate skbio"
alias csc205="cd ~/school/csc205/assignments"
alias rust="cd ~/code/rosalind_rust"
alias iab="cd ~/code/iab; source activate iab"
alias wr="/home/anders/code/wrappit/wrappit.py /home/anders/code/wrappit/wrappit.yml"

export PATH="/home/anders/sbt/bin:$PATH"
export PATH="/home/anders/anaconda/bin:$PATH"

#export NVM_DIR="/home/anders/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#[[ -s "/home/anders/.gvm/scripts/gvm" ]] && source "/home/anders/.gvm/scripts/gvm"

PS1="\[\e[1;35m\]\w\[\e[1;95m\]\[\e[1;33m\]\$(__git_ps1 ' (%s)')\n\[\e[1;31m\]->\[\e[0m\] "

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0232323" #black
    echo -en "\e]P82B2B2B" #darkgrey
    echo -en "\e]P1D75F5F" #darkred
    echo -en "\e]P9E33636" #red
    echo -en "\e]P287AF5F" #darkgreen
    echo -en "\e]PA98E34D" #green
    echo -en "\e]P3D7AF87" #brown
    echo -en "\e]PBFFD75F" #yellow
    echo -en "\e]P48787AF" #darkblue
    echo -en "\e]PC7373C9" #blue
    echo -en "\e]P5BD53A5" #darkmagenta
    echo -en "\e]PDD633B2" #magenta
    echo -en "\e]P65FAFAF" #darkcyan
    echo -en "\e]PE44C9C9" #cyan
    echo -en "\e]P7E5E5E5" #lightgrey
    echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi
