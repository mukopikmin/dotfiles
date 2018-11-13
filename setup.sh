#! /bin/bash

set -e

files=(".zshrc" ".vimrc" ".vim")

for file in ${files[@]}
do
  if [ -f $HOME/$file ]; then
    echo "$file already exists. Do nothing."
  else
    ln -s $PWD/$file $HOME/$file
    echo "Created symlink to $file"
  fi
done

# Anyenv
anyenv_dir=$HOME/.anyenv
anyenv_repo=https://github.com/riywo/anyenv
anyenv_update_repo=https://github.com/znz/anyenv-update
if [ ! -e $anyenv_dir ]; then
  git clone $anyenv_repo $anyenv_dir
  mkdir -p $anyenv_dir/plugins
  git clone $anyenv_update_repo $anyenv_dir/plugins/anyenv-update
fi

# Vim
vim_dir=$HOME/.vim
molokai_theme=https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
mkdir -p $vim_dir/colors
wget -O $vim_dir/colors/molokai.vim $molokai_theme
