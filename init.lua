require('plugins')

-- disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Tabs and spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true 
vim.opt.textwidth = 80
vim.opt.wrap = true
-- vim.opt.colorcolumn = "81" -- +1 is convention

local function map(mode, lhs, rhs, opts)
local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
map('n', '<CR>', '<cmd>noh<CR>')    -- clears highlights

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.background = 'dark'
vim.cmd [[colorscheme kanagawa]]
vim.opt.termguicolors = true
vim.cmd("syntax on")
require'nvim-treesitter.configs'.setup{
  ensure_installed = {"cpp", "c", "python"},
  highlight={enable=true,disable={"latex"}},
}


-- Vimtex
vim.g.tex_flavor = 'latex'
-- to make a build directory for latex files
vim.g.vimtex_compiler_latexmk = {
        out_dir = "build",
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_general_viewer = 'SumatraPDF'
vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
vim.opt.conceallevel = 1 
vim.g.tex_conceal = 'abdmg'
vim.cmd('hi Conceal ctermbg=none')

-- lualine config 
require('lualine').setup{
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path=1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'nvim-tree'}
}

-- ultisnips triggers
vim.g.UltiSnipsSnippetDirectories = {'C:/Users/boser/AppData/Local/nvim/plugged/ultisnips','C:/Users/boser/AppData/Local/nvim/my-snippets/UltiSnips'}
vim.g.UltiSnipsExpandTrigger="<tab>"
vim.g.UltiSnipsJumpForwardTrigger="<tab>"
vim.g.UltiSnipsJumpBackwardTrigger="<s-tab>"


-- Pear Tree auto-pair
vim.g.pear_tree_pairs = {
  ["("] = { closer = ")" },
  ["["] = { closer = "]" },
  ["{"] = { closer = "}" },
  ["'"] = { closer = "'" },
  ['"'] = { closer = '"' },
  ['/*'] = { closer = '*/' },
}
-- breaks dot repeatability of brackets but closes them immediately
vim.g.pear_tree_repeatable_expand = 0
-- vim.g.pear_tree_smart_openers = 1
vim.g.pear_tree_smart_closers = 1
vim.g.pear_tree_smart_backspace = 1


-- enable nvim-tree
require("nvim-tree").setup()
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })

-- mappings
map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
