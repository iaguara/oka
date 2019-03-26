#
# JENV settings

_JENV_HOME="$HOME/.jenv"

if [ -d "$_JENV_HOME" ]
then
  export JENV_HOME=$_JENV_HOME
  export PATH="$JENV_HOME/bin:$PATH"

  eval "$(jenv init -)"
fi
