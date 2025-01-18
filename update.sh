#!/bin/bash

rm -rf ./i3 ./nvim ./scripts ./.tmux.conf ./.vimrc
mkdir i3 nvim scripts

# copy dirs
cp -rv ~/.config/i3/* ./i3
cp -rv ~/.config/nvim/* ./nvim
cp -rv ~/scripts/* ./scripts

# copy configs
cp -v ~/.tmux.conf ./.tmux.conf
cp -v ~/.vimrc ./.vimrc
