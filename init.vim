" Vim-plug
call plug#begin('$HOME/AppData/Local/nvim/plugged')
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'

Plug 'SirVer/ultisnips'

Plug 'artur-shaik/vim-javacomplete2'

Plug 'tmsvg/pear-tree'

" Autocomplete with Deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()
" 'filetype plugin indent on' already called in plug#end()

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set wrap
set colorcolumn=+1
" set nojoinspaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/

" Visual
set number
set relativenumber
set mouse=a
syntax on
syntax enable
set background=dark
" colorscheme cloned in Neovim\share\nvim\runtime\pack\dist\opt
" https://github.com/lifepillar/vim-solarized8
colorscheme solarized8_high
set termguicolors

" Vimtex
let g:tex_flavor = 'latex'
" to make a build directory for latex files
let g:vimtex_compiler_latexmk = { 
    \ 'build_dir' : 'build' ,
    \}
let g:vimtex_compiler_progname = 'nvr' " need pip install neovim-remote
let g:vimtex_view_general_viewer = 'SumatraPDF' 
let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'
" let g:vimtex_view_general_options_latexmk='-reuse-instance' " deprecated option
" conceal commands
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Vim airline show buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '>'
"let g:airline_theme='wombat'

"Ultisnips triggers
let g:UltiSnipsSnippetDirectories = ['C:\Users\boser\AppData\Local\nvim\plugged\ultisnips','C:\Users\boser\AppData\Local\nvim\my-snippets\UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Java Autocomplete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Deoplete
" set python host for neovim
let g:python3_host_prog = 'C:\tools\Anaconda3\python.exe'
let g:deoplete#enable_at_startup = 1
" get vimtex to work with deoplete
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
" get java autocomplete to work
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'

" Pear Tree auto-pair
let g:pear_tree_pairs = {
            \ '(': {'closer': ')'},
            \ '[': {'closer': ']'},
            \ '{': {'closer': '}'},
            \ "'": {'closer': "'"},
            \ '"': {'closer': '"'}
            \ }
imap <BS> <Plug>(PearTreeBackspace)
imap <CR> <Plug>(PearTreeExpand)
imap <Esc> <Plug>(PearTreeFinishExpansion)
" imap <Tab> <Plug>(PearTreeJump)
