#
# Iaguara
_OKA_DIR="$HOME/.oka"
if [ -d "$_OKA_DIR" ]
then
  export OKA_DIR=$_OKA_DIR
fi

_PINIMA_HOME="$HOME/.pinima"
if [ -s "$_PINIMA_HOME/pinima.sh" ]
then
  export PINIMA_HOME=$_PINIMA_HOME
  source $PINIMA_HOME/pinima.sh
fi

_IA_HOME="$HOME/.iaguara"
if [ -s "$_IA_HOME/iaguara.sh" ]
then
  export IA_HOME=$_IA_HOME
  export IA_APPS="${IA_APPS:-$PINIMA_HOME}"
  source $IA_HOME/iaguara.sh
fi
