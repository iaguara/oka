export IA_HOME=${IA_HOME:-/iaguara}
export OKA_DIR=$HOME/.oka

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM=$OKA_DIR/zsh/custom

plugins=(git vi-mode docker)

source $ZSH/oh-my-zsh.sh

[ -s "$IA_HOME/iaguara.sh" ] && \. $IA_HOME/iaguara.sh
