#!/usr/bin/env sh

{

set -eu

umask 022

oka_clone() {
  cd $HOME
  git init
  git remote add origin https://github.com/iaguara/oka.git
  git fetch --all
  git reset --hard origin/master
  git pull origin master
  cd -
}

oka_install_fonts() {
  sh ./install_fonts.sh "../fonts"
}

oka_configure_git() {
  printf "\
[include]\n\
  path = ${HOME}/.oka/git/.gitconfig\n\
" | tee ${HOME}/.gitconfig
}

oka_install_antigen() {
  curl -L git.io/antigen > ${HOME}/.oka/zsh/antigen.zsh
}

oka_install_tpm() {
  git clone \
    --quiet \
    --depth=1 \
    --single-branch \
    -b master \
    https://github.com/tmux-plugins/tpm.git \
    ${HOME}/.tmux/plugins/tpm
}

oka_install() {
  oka_clone
  oka_configure_git
  oka_install_fonts
  oka_install_antigen
  oka_install_tpm
}
oka_install

}
