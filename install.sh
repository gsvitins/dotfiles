#!/usr/bin/env bash

# Check if git is installed
if [ ! -x "/usr/bin/git" ]; then
    echo "You need to install git in order to continue with dotfiles installation"
fi

echo -n "Deleting already deployed Vundle plugins..."
rm -rf .vim/bundle/*
echo "done!"

echo -n "Creating symbolic links..."
ln -sf $PWD/.vim ~/.vim
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/.bashrc ~/.bashrc
ln -sf $PWD/.tmux.conf ~/.tmux.conf
ln -sf $PWD/.tmux ~/.tmux
echo "done!"

echo -n "Install Vundle (vim plugin manager)..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim &> /dev/null
echo "done!"

vim -c "PluginInstall"

echo "Installation complete!"


