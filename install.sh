#!/bin/bash

echo 'declare the variable'
DOT_DIR=${HOME}/dotfiles

echo 'Run app install on homeberw'
# brew bundle

echo 'Paste symbolic link to home directory'
ln -s ${DOT_DIR}/zsh/.bashrc ${HOME}/.bashrc
ln -s ${DOT_DIR}/zsh/.bash_profile ${HOME}/.bash_profile
ln -s ${DOT_DIR}/vim/.vimrc ${HOME}/.vimrc
ln -s ${DOT_DIR}/zsh/.zshrc ${HOME}/.zshrc
ln -s ${DOT_DIR}/zsh/.zsh_profile ${HOME}/.zsh_profile
ln -s ${DOT_DIR}/.gitconfig ${HOME}/.gitconfig

echo '🎉Finished'
echo 'Please restart the terminal'
