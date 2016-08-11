
source ~/.git-prompt.sh
source ~/.rsvm/rsvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/opt/node/node-v4.1.2-linux-x64/bin"
export PATH="$PATH:/home/anders/android-studio/sdk/platform-tools"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/musl/bin

export GRADLE_HOME="/home/anders/gradle-2.12"
export PATH=$PATH:$GRADLE_HOME/bin

export PATH=$PATH:$HOME/dng/bin


alias skbio="cd ~/code/scikit-bio; source activate skbio"
alias wr="/home/anders/code/wrappit/wrappit.py /home/anders/code/wrappit/wrappit.yml"
alias ptrip="ssh -p 443 asv@powertrip.mggen.nau.edu"
alias tpd="cd ~/code/tidepool-docker"
alias pi="ssh pi@192.168.0.120"
alias udoo="ssh alarm@192.168.0.150"
alias odroid="ssh odroid@192.168.0.140"
alias mars="java -jar /home/anders/sync/school/cse230/Mars4_5.jar"
alias school="cd /home/anders/sync/school"
alias heman="ssh anders@70.176.187.184"

export PATH="/home/anders/sbt/bin:$PATH"

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
[[ -s /home/anders/.rsvm/rsvm.sh ]] && . /home/anders/.rsvm/rsvm.sh # This loads RSVM

export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

# added by Miniconda3 3.16.0 installer
export PATH="/home/anders/miniconda3/bin:$PATH"

export NVM_DIR="/home/anders/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$PATH:$HOME/raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin
