#!/bin/bash
set -x

DOT_DIRECTORY="${HOME}/dotfiles"

dot_files=(
 .vimrc
 .bashrc
)

for f in ${dot_files[@]}; do
  echo $f

#  ls -l ${DOT_DIRECTORY}/${f}
  if [ -f ${HOME}/${f} ]; then
    mv ${HOME}/${f} ${HOME}/bak${f}
  fi

  ln -snv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

