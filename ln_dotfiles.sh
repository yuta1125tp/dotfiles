#!/bin/bash
script=$(readlink -f "$0")
basedir=$(dirname "$script")
ln -sf ${basedir}/dotfiles/.vimrc ~/.vimrc
ln -sf ${basedir}/dotfiles/.tmux.conf ~/.tmux.conf