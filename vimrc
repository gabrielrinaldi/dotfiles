" be iMproved, required
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim_bundles')

" let Vundle manage Vundle, required
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/vitality.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Editor config
set number
set cursorline
syntax on
color dracula
