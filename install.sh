#!/usr/bin/env bash

# check if git is installed
if [ ! -x "/usr/bin/git" ]; then
    echo "You need to install git to continue with dotfiles installation!"
    exit 1
fi

# check if install.sh is run from same dir
if [ ! -x "$PWD/install.sh" ]; then
    echo "You need to run install.sh script from the same dir!"
    exit 1
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
ln -sf $PWD/.inputrc ~/.inputrc
ln -sf $PWD/.ssh/config ~/.ssh/config
echo "done!"

echo -n "Install Vundle (vim plugin manager)..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim &> /dev/null
echo "done!"

vim +PluginInstall +qall

echo "Installation complete!"
