set nocompatible
filetype off
syntax on
set nowrap
set encoding=utf8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim_bundles')

" IDE
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'

" Tools


" Language Support
Plugin 'elzr/vim-json'
Plugin 'prettier/vim-prettier'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kylef/apiblueprint.vim'
Plugin 'dracula/vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" Airline
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

" Javascript
let g:javascript_plugin_jsdoc = 1

" Prettier
let g:prettier#exec_cmd_path = '$HOME/.yarn/bin/prettier'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#parser = 'typescript'
let g:prettier#config#config_precedence = 'prefer-file'

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

set number
set cursorline
color dracula

set statusline+=%#warningmsg#
set statusline+=%*

