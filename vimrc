"""""""""""""""""""""""""""""""
"          My vimrc           " 
"""""""""""""""""""""""""""""""

" general settings
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number
set relativenumber
set tabstop=4

" Allow vim to find coloscheme 
set rtp+=~/.vim/bundle/vim-colorscheme-primary

" Google theme setup
set t_Co=256
set background=dark
colorscheme primary

" Beginning of vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline tag plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'google/vim-colorscheme-primary'


" Syntasitc (syntax highlighter)
Plugin 'scrooloose/syntastic'

" Auto completion
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
"end of vundle plugins

"Airline config
let g:airline_powerline_fonts = 1
:let g:airline_theme='base16_spacemacs'
set statusline=%=&P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
set noshowmode

"Use markdown syntax only on markdonwn files
augroup pandoc_syntax
		au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc

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

" Live preview for LaTEX
let g:livepreview_previewer = 'open -a Preview'

" Nerd tree shortcuts
map <C-n> :NERDTreeToggle<CR>

" Abreviations 
ab #i  #include <
ab iio #include <stdio.h>
ab int_main int main(int argc, char **argv)
ab #d #define
