#!/usr/bin/env bash

# Check if git is installed
if [ -x "/usr/bin/git" ]; then
    echo "Installing dotfiles..."
else
    echo "You need to install git in order to continue with dotfiles installation"
fi

# Create symbolic links
ln -sf $PWD/.vim ~/.vim
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/.bashrc ~/.bashrc
ln -sf $PWD/.tmux.conf ~/.tmux.conf
ln -sf $PWD/.tmux/layout ~/.tmux/layout

# Install Vundle for vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installation complete!"
echo "Please start vim and run ':PluginInstall' command to install all plugins"


