" https://raw.githubusercontent.com/lakelse/lakelse.github.com/master/.vimrc
"
" checkout these themes: https://github.com/noah/vim256-color
" - atom-dark-256, seti or 256-grayvim
" % cd ~/.vim/bundle
" % git clone --recursive git://github.com/noah/vim256-color.git

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
