set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
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
Plugin 'rodjek/vim-puppet'
Plugin 'solarnz/arcanist.vim'
Plugin 'fatih/vim-go'
Plugin 'solarnz/thrift.vim'
Plugin 'junegunn/fzf.vim'

call vundle#end()

filetype plugin indent on

set number
set tabstop=2
set expandtab
set hlsearch
set splitright
set splitbelow
set laststatus=2
set noswapfile
set foldmethod=indent
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set t_Co=16
set background=dark
colorscheme solarized

noremap <C-a> ggvG$

let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
