syntax on
set number
set relativenumber
set tabstop=4

"Use markdown syntax only on markdonwn files
augroup pandoc_syntax
		au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc

" Makes pathogen work
execute pathogen#infect()
filetype plugin indent on

" Abreviations definitel add a few of these 
" ab iio #include <iostream>

