syntax on
filetype plugin on
language en_US
inoremap jk <esc>
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
set omnifunc=syntaxcomplete#Complete

source ~/.config/nvim/vim-plug/plug.vim

nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <leader><CR> :w <bar> so ~/.config/nvim/init.vim<CR>
inoremap <silent><expr> <c-space> coc#refresh()
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

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/coc.vim

colorscheme night-owl
let g:airline_theme='rigel'
