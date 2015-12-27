execute pathogen#infect()
filetype plugin indent on


map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>r :CommandTFlush<cr>

syntax enable
set t_Co=256
"colorscheme desert
colorscheme molokai
set nu

set tabstop=2
set shiftwidth=2
set expandtab

set laststatus=2

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

" set background transparent
"hi Normal  ctermfg=252 ctermbg=none
"hi NonText ctermfg=252 ctermbg=none
