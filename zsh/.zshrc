export ZSH='$HOME/.oh-my-zsh'

ZSH_THEME='mytheme'

source $ZSH/oh-my-zsh.sh

plugins=(git)

SUDO='/usr/bin/sudo'
APT='/usr/bin/apt'

alias up='$SUDO $APT update -y && $SUDO $APT full-upgrade -y && $SUDO $APT autoremove --purge -y && $SUDO $APT autoclean -y && $SUDO $APT autopurge -y'
alias ainstall='$SUDO $APT install -y'
alias aremove='$SUDO $APT remove -y'

alias flutterup='flutter pub get && flutter pub upgrade && flutter pub outdated'

alias build='cmake -S . -Bbuild -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release && cmake --build build'

export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:'

# Load Angular CLI autocompletion.
source <(ng completion script)
