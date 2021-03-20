syntax on
filetype plugin on
language en_US
inoremap jk <esc>
set shortmess+=c
set cursorline
set scrolloff=12
set noshowcmd
set noshowmode
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set termguicolors
set background=dark
set encoding=utf-8
set fileencoding=utf-8
set splitbelow
set splitright
set laststatus=2 
set updatetime=300
set nobackup
set nowritebackup
set clipboard=unnamedplus
set showfulltag
set conceallevel=0

source ~/.config/nvim/vim-plug/plug.vim

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <leader><CR> :w <bar> so ~/.config/nvim/init.vim<CR>
"inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <leader>I :PlugInstall<CR>
nnoremap <leader>C :PlugClean <bar> y<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nnoremap <C-z> :Goyo<CR>
nnoremap <C-l> :Limelight!!<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :vertical Gstatus<CR>
nnoremap <leader>gf :Gvdiffsplit<CR>

" Use alt + hjkl to resize windows
nnoremap hr-2  :resize -2<CR>
nnoremap hr+2  :resize +2<CR>
nnoremap vhr-2 :vertical resize -2<CR>
nnoremap vhr+2 :vertical resize +2<CR>

"let g:coc_global_extensions = [
  "\ 'coc-snippets',
  "\ 'coc-pairs',
  "\ 'coc-tsserver',
  "\ 'coc-eslint',
  "\ 'coc-prettier',
  "\ 'coc-json',
  "\ ]

if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

source $HOME/.config/nvim/keys/which-key.vim
"source $HOME/.config/nvim/plug-config/coc.vim

colorscheme night-owl
let g:airline_theme='rigel'

lua require('lspconfig').tsserver.setup{}

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

lua require('nv-compe')
