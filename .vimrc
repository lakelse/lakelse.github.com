" https://raw.githubusercontent.com/lakelse/lakelse.github.com/master/.vimrc
"
"mkdir -p ~/.vim/autoload ~/.vim/bundle
"cd ~/.vim/autoload
"wget https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
"mkdir -p ~/.vim/colors
"curl -L http://www.vim.org/scripts/download_script.php?src_id=9750 > ~/.vim/colors/molokai.vim
"curl -L https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim > ~/.vim/colors/atom-dark-256.vim
"cd ~/.vim/bundle
"git clone https://github.com/vim-ruby/vim-ruby.git
"git clone https://github.com/kien/ctrlp.vim.git

execute pathogen#infect()
filetype plugin indent on


"map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
"map <leader>r :CommandTFlush<cr>

set ruler

syntax enable
set t_Co=256
"colorscheme desert
"colorscheme molokai
colorscheme atom-dark-256
"colorscheme grb256
set nu

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set laststatus=2


"vim ruby requirements...
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set omnifunc=syntaxcomplete#Complete
"autocmd BufEnter * silent! lcd %:p:h


nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

set backspace=indent,eol,start

"set autochdir
"autocmd BufEnter * silent! lcd %:p:h

" timestamp
nmap <F7> a<C-R>=strftime("%Y-%m-%d %H:%M:%S %Z")<CR><Esc>
imap <F7> <C-R>=strftime("%Y-%m-%d %H:%M:%S %Z")<CR>

let g:CommandTHighlightColor = 'Visual'

imap <S-CR>    <CR><CR>end<Esc>-cc

" set background transparent
"hi Normal  ctermfg=252 ctermbg=none
"hi NonText ctermfg=252 ctermbg=none

set nohlsearch

" see: http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
" set backupdir=~/.backup//
" set directory=~/.backup//

" opens new tab when using ctrl-p to select file
" https://github.com/kien/ctrlp.vim/issues/160
"let g:ctrlp_prompt_mappings = {
"    \ 'AcceptSelection("e")': ['<c-t>'],
"    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"    \ }

"  http://stackoverflow.com/questions/1562633/setting-vim-whitespace-preferences-by-filetype
"autocmd Filetype php setlocal ts=4 sts=4 sw=4


" From akalyaev via: https://coderwall.com/p/hk_bwg/how-to-speed-up-ctrlp
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" sudo dnf install the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
