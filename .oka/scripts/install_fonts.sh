#!/usr/bin/env sh

install_fonts() {
  # fonts directory
  local fontsDir="$1"
  if [ ! -d "$fontsDir" ]
  then
    fontsDir="$( cd "$( dirname "$0" )" && pwd )/../fonts"
    if [ ! -d "$fontsDir" ]
    then
      fontsDir="$( cd "$( dirname "$0" )" && pwd )"
    fi
  fi

  # installation fonts directory
  local installFontsDir=""
  if [ "$(uname)" = 'Darwin' ]
  then
    # MacOS
    installFontsDir="$HOME/Library/Fonts"
  else
    # Linux
    installFontsDir="$HOME/.local/share/fonts"
    mkdir -p $installFontsDir
  fi

  # Copy all fonts to user fonts directory
  echo "Copying fonts..."
  local findFonts="find \"$fontsDir\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"
  eval $findFonts | xargs -0 -I % cp "%" "$installFontsDir/"

  # Reset font cache on Linux
  if command -v fc-cache @>/dev/null
  then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f $installFontsDir
  fi

  echo "All fonts installed to $installFontsDir"
  echo
}
install_fonts
