#!/bin/bash

git submodule update --init --recursive

ln -s $PWD/powerlevel9k oh-my-zsh/custom/themes/powerlevel9k
ln -s $PWD/zsh-completions oh-my-zsh/custom/plugins/zsh-completions
ln -s $PWD/home/shellrc $HOME/.shellrc
ln -s $PWD/home/zshrc $HOME/.zshrc

for pkg in $PWD/packages/*; do
  bash $pkg/install.sh
done
