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

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
