#!/usr/bin/env bash

declare -A c=( \
      [curl]="/usr/bin/curl --remote-name --silent" \
       [git]="/usr/bin/git clone --quiet" \
 [atom_dark]="https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim" \
   [molokai]="https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim" \
     [vimrc]="https://raw.githubusercontent.com/lakelse/lakelse.github.com/master/.vimrc" \
  [pathogen]="https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim" \
  [vim_ruby]="https://github.com/vim-ruby/vim-ruby.git" \
     [ctrlp]="https://github.com/kien/ctrlp.vim.git"
)

echo "alias svim=\"sudo -E /usr/bin/vim\"" >> ~/.bashrc

mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors

# complete installing vim and tmux
${c[curl]} ${c[vimrc]}
${c[curl]} ${c[tmux_conf]}

cd ~/.vim/autoload && \${c[curl]} \${c[pathogen]}
cd ~/.vim/bundle   && \${c[git]}  \${c[vim_ruby]} && \${c[git]}  \${c[ctrlp]}
cd ~/.vim/colors   && \${c[curl]} \${c[molokai]}  && \${c[curl]} \${c[atom_dark]}
