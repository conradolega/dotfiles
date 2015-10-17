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
Plugin 'tpope/vim-obsession'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

call vundle#end()

filetype plugin indent on

set number
set tabstop=2
set expandtab
set hlsearch
set splitright
set splitbelow
set laststatus=2
set directory=~/.vim/swp//
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set t_Co=16
set background=dark
colorscheme solarized

noremap <C-a> ggvG$
