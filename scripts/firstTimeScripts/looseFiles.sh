#!/bin/bash

rm -f ~/{.aliases,.bashrc,.git-prompt,.tmux.conf,.vimrc}
ln -sf $(pwd)/.aliases ~/
ln -sf $(pwd)/.bashrc ~/
ln -sf $(pwd)/.git-prompt.sh ~/
ln -sf $(pwd)/.tmux.conf ~/
ln -sf $(pwd)/.vimrc ~/
