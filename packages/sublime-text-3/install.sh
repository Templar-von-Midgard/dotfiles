#!/bin/bash

CURDIR=$(dirname $0)

for file in $CURDIR/User/*; do
  ln -s "${file}" "$HOME/.config/sublime-text-3/Packages/User/${file##*/}"
done
