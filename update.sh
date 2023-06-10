#!/bin/bash

# copy dirs
cp -rfv ~/.config/i3/* ./i3
cp -rfv ~/.config/nvim/* ./nvim

# copy configs
cp -v ~/.tmux.conf ./.tmux.conf
cp -v ~/.vimrc ./.vimrc
cp -v ~/.vscodevimrc ./.vscodevimrc
