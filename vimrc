syntax on
set number
set relativenumber
set tabstop=4

"Makes powerline work
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

"Use markdown syntax only on markdonwn files
augroup pandoc_syntax
		au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc

" Makes pathogen work
execute pathogen#infect()
filetype plugin indent on

" Airline allows pathogen fonts
let g:airline_powerline_fonts = 1

" Syntactic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Abreviations definitel add a few of these 
ab #i  #include <
ab iio #include <stdio.h>
ab main int main(int argc char **argv)

" Nerd tree shortcuts
map <C-n> :NERDTreeToggle<CR>
