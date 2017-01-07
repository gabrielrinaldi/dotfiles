set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim_bundles')

Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rizzatti/dash.vim'
Plugin 'kylef/apiblueprint.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'dracula/vim'

call vundle#end()
filetype plugin indent on

set number
set cursorline
syntax on
color dracula

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
