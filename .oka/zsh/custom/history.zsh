#
# History
export HISTSIZE=10000
export HISTFILESIZE=10000
export HIST_STAMPS="yyyy-mm-dd"
export HISTFILE="$HOME/.zsh_history"
export HISTCONTROL=ignorespace

# history remove
hrm () {
  LC_ALL=C sed -i "/$1/d" $HISTFILE
}
