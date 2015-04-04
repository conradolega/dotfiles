set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on

set number
set tabstop=2
set expandtab
set splitright
set splitbelow
set laststatus=2
autocmd Filetype gitcommit setlocal spell textwidth=72

set t_Co=16
set background=dark
colorscheme solarized
