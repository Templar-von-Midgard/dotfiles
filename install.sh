#!/bin/bash

git submodule update --init --recursive

ln -s $PWD/powerlevel9k oh-my-zsh/custom/themes/powerlevel9k
ln -s $PWD/zsh-completions oh-my-zsh/custom/plugins/zsh-completions
ln -s $PWD/home/shellrc $HOME/.shellrc
ln -s $PWD/home/zshrc $HOME/.zshrc

ln -s $PWD/packages/QtProject/qtcreator/styles/SublimeMaterial.xml $HOME/.config/QtProject/qtcreator/styles/SublimeMaterial.xml
ln -s $PWD/packages/QtProject/qtcreator/styles/SublimeMaterialLight.xml $HOME/.config/QtProject/qtcreator/styles/SublimeMaterialLight.xml

for pkg in $PWD/packages/*; do
  if [ -f $pkg/install.sh ]; then
    bash $pkg/install.sh
  fi
done

git config --global alias.history "log --date=short --pretty=format:'%Cblue%ad%C(auto) |%d %s [%Cred%an (%ae)%C(auto)] (%H)' --first-parent"
