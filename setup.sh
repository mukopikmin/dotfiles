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

