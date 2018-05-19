set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
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
Plugin 'othree/yajs.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'mfukar/robotframework-vim'
Plugin 'bracki/vim-prometheus'

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
autocmd BufNewFile,BufReadPost Dockerfile set filetype=dockerfile
autocmd BufNewFile,BufReadPost Jenkinsfile set filetype=groovy

set t_Co=16
set background=dark
colorscheme solarized
syntax on

noremap <C-a> ggvG$
inoremap jk <Esc>

let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0

" ripgrep
if executable('rg')
  " Use rg over grep
  set grepprg=rg\ --vimgrep\ --no-heading

  " Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
endif
