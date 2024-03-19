local PATH = "$HOME/AppData/Local/nvim/plugged"
local Plug = vim.fn['plug#']

-- vim-plug stuff. convert to Packer for lua implementation
vim.call('plug#begin', PATH)
	Plug 'lervag/vimtex'
	-- Plug 'KeitaNakamura/tex-conceal.vim'

	Plug 'scrooloose/nerdtree'
	Plug 'bling/vim-airline'

	Plug 'SirVer/ultisnips'

	Plug 'tmsvg/pear-tree'

	-- Autocomplete with cmp
	-- completion
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	
vim.call('plug#end')
-- 'filetype plugin indent on' already called in plug#end()

require('plugins.nvim-cmp')