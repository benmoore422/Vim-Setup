"------------------------------------------------------
"---------------------Ben's vimrc----------------------
"------------------------------------------------------


"------------------------------------------------------
" ----------------Table of Contents--------------------
"------------------------------------------------------
" 1) general settings                                 -
" 2) vundle plugins                                   -
" 3) individual plugin configurations                 -
" 4) commands                                         -
" 5) key remappings                                   -
" 6) abbreviations                                    -
" 7) functions                                        -
"------------------------------------------------------



"------------------------------------------------------
" 1) general settings ---------------------------------
"------------------------------------------------------

syntax on
set number
set tabstop=2

" Vim Panes settings
set splitbelow
set splitright

" Set leader key
let mapleader = "\<Space>"

let g:syntastic_is_open = 0

" Allow vim to find coloscheme 
set rtp+=~/.vim/bundle/vim-colorscheme-primary

"------------------------------------------------------


"------------------------------------------------------
" 2) vundle plugins -----------------------------------
"------------------------------------------------------


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

call vundle#end()            " required

filetype plugin indent on    " required
" End of vundle plugins

"------------------------------------------------------


"------------------------------------------------------
" 3) individual plugin configurations -----------------
"------------------------------------------------------


" > Airline settings 
" ------------------
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
set statusline=%=&P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
set noshowmode

" > Syntactic settings
" --------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" > Pandoc settings
" -----------------
augroup pandoc_syntax
		au! BufNewFile,BufFilePRe,BufRead *.md set filetype=markdown.pandoc " Use markdown syntax only on markdonwn files

"------------------------------------------------------


"------------------------------------------------------
" 4) commands -----------------------------------------
"------------------------------------------------------


command ToggleCompileErrors :call ToggleCompileErrors()
command OpenVerticalTerm vsplit <bar> terminal
command OpenHorizontalTerm split <bar> terminal

"------------------------------------------------------


"------------------------------------------------------
" 5) key remappings -----------------------------------
"------------------------------------------------------


" Map space to nothing since it is my leader key
nnoremap <SPACE> <Nop>

" Easier mapping for panes navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Leader>v :vsp <Space>
nnoremap <Leader>h :sp <Space>

" Change relative number mode
nnoremap <C-N> :set relativenumber! <cr>

" Keymaps for buffer navigation
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Open terminal
nnoremap <Leader>t :OpenVerticalTerm<CR> i

" Toggle syntastic window
nnoremap <Leader>b :ToggleCompileErrors<CR>

"------------------------------------------------------

"------------------------------------------------------
" 6) abbreviations ------------------------------------
"------------------------------------------------------


ab #i  #include <
ab iio #include <stdio.h>
ab _int main(int argc, char **argv)
ab #d #define

"------------------------------------------------------


"------------------------------------------------------
" 7) functions ----------------------------------------
"------------------------------------------------------


function! ToggleCompileErrors()
				:if g:syntastic_is_open 
								:call SyntasticReset()
								let g:syntastic_is_open = 0
				:else
								:call SyntasticCheck()
								let g:syntastic_is_open = 1
				:endif
endfunction


"------------------------------------------------------
