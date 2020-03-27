#!/bin/bash
dotfiles_root=$(dirname "`readlink -f "$0"`")
ln -sf ${dotfiles_root}/.vimrc ~/.vimrc
ln -sf ${dotfiles_root}/.tmux.conf ~/.tmux.conf