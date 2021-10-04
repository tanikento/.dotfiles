#!/bin/sh

echo 'declare the variable'
DOT_DIR=${HOME}/seattle/dotfiles

echo 'Paste symbolic link to home directory'
ln -fs ${DOT_DIR}/zsh/.bashrc ${HOME}/.bashrc
ln -fs ${DOT_DIR}/zsh/.bash_profile ${HOME}/.bash_profile
ln -fs ${DOT_DIR}/zsh/.zshrc ${HOME}/.zshrc
ln -fs ${DOT_DIR}/zsh/.zsh_profile ${HOME}/.zsh_profile
ln -fs ${DOT_DIR}/vim/.vimrc ${HOME}/.vimrc
ln -fs ${DOT_DIR}/git/.gitconfig ${HOME}/.gitconfig
ln -fs ${DOT_DIR}/git/.gitignore_global ${HOME}/.gitignore_global

echo 'Run app install on homeberw'
# brew bundle

echo '🎉Finished'
echo 'Please restart the terminal'
