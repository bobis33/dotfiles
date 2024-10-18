SUDO='/usr/bin/sudo'
APT='/usr/bin/apt'
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/opt/cmake/bin/"
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias up='$SUDO $APT update -y && $SUDO $APT full-upgrade -y && $SUDO $APT autoremove --purge -y && $SUDO $APT autoclean -y && $SUDO $APT autopurge -y'
alias flutterup='flutter pub get && flutter pub upgrade && flutter pub outdated'
alias clean='sudo journalctl --vacuum-time=1d && sudo find ~/.cache /var/tmp /tmp -mindepth 1 -delete'

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
