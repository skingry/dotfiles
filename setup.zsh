#!/bin/zsh

# Install custom binaries
cp -Rp bin ~/.bin

# Setup zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
rm ~/.zshrc

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

rm ~/.zshrc
rm ~/.zpreztorc
rm ~/.zprofile
cp zsh/.zshrc ~/.zshrc
cp zsh/.zpreztorc ~/.zpreztorc
cp zsh/.zprofile ~/.zprofile

# Install fonts
cp -Rp fonts ~/.fonts

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vim/.vimrc ~/.vimrc
vim +PluginInstall +qall

# Setup Git
cp git/.gitconfig ~/.gitconfig
cp git/.gitignore ~/.gitignore
cp git/.gitconfig.user ~/.gitconfig.user

# Setup tmux
cp tmux/.tmux.conf ~/.tmux.conf
