#!/bin/bash -e
# Script to install dotfiles

DOTFILES=$HOME/dotfiles
BAK=$HOME/.dotfiles.bak
REPO="https://github.com/dlhom/dotfiles.git" # git repository

doall() { while read line; do $1 $line; done; }
symlink() {

  if [ ! -L ~/.$1 ]; then
    echo "linking $1"
    [[ -f ~/.$1 ]] && mv ~/.$1 $BAK/
    ln -s $DOTFILES/$1 ~/.$1
  fi
}
# export -f symlink

echo "====================="
echo "installing dotfiles"
echo "====================="


# check if dotfiles repo cloned
[[ ! -d $DOTFILES ]] && git clone $REPO $DOTFILES

pushd $DOTFILES && pwd
# git pull

# create backup directory
[[ ! -d $BAK ]] && mkdir -p $BAK

# TODO: suffix with .symlink and use find exec or xargs
ls $DOTFILES | grep -vE 'README.md|install.sh|sublime' | doall symlink

# install vundle to manage vim bundles
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

pushd $HOME
popd
popd

if [ "$(uname)" == "Darwin" ]; then
  source ~/.bash_profile
else 
  source ~/.bashrc
fi

echo "====================="
echo "dotfile install done"
echo "====================="

