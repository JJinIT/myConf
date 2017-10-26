set autoindent
set cindent

set tabstop=4
set shiftwidth=4
set noexpandtab

autocmd BufWritePre * %s/\s\+$//e
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set hlsearch
hi Visual guibg=SkyBlue1
hi Visual ctermbg=111
highlight Search ctermfg=black
"hi Visual guibg=LightPink4
autocmd BufWritePre * :%s/\s\+$//e

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
