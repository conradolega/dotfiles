call plug#begin('~/.nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <silent> <C-f> <cmd>Telescope live_grep<cr>
