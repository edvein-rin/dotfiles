#!/bin/bash

if [[ ! -a ~/.config/nvim/init.vim ]]; then
    echo "INFO Installing SpaceVim"
    curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim
    echo "IMPORTANT Don't forget to open nvim to finish installing SpaceVim"
else
    echo "INFO SpaceVim is already installed"
fi