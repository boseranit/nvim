local PATH = "$HOME/AppData/Local/nvim/plugged"
local Plug = vim.fn['plug#']

-- vim-plug stuff. convert to Packer for lua implementation
vim.call('plug#begin', PATH)
	Plug 'lervag/vimtex'
	-- Plug 'KeitaNakamura/tex-conceal.vim'

	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'bling/vim-airline'

	Plug 'tmsvg/pear-tree'

	-- Autocomplete with cmp
	-- completion
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

	-- to manage LSP servers and linters
	Plug 'williamboman/mason.nvim'
	
	Plug 'SirVer/ultisnips'
	Plug 'quangnguyen30192/cmp-nvim-ultisnips'
	
vim.call('plug#end')
-- 'filetype plugin indent on' already called in plug#end()

require('plugins.nvim-cmp')