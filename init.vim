let mapleader = "\<Space>"

call plug#begin('~/.local/share/nvim/plugged')

" airline
Plug 'vim-airline/vim-airline'
 
" NERDTree
Plug 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"CtrlP
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Eslint
Plug 'w0rp/ale'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" Git
Plug 'tpope/vim-fugitive'

" Goyo
Plug 'junegunn/goyo.vim'
let g:goyo_width = 120
:noremap <leader>g :Goyo<cr>
autocmd! User GoyoLeave nested hi Normal guibg=NONE ctermbg=NONE


set sw=2
set ts=2
set foldmethod=indent
set foldlevelstart=99


:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <leader>h <A-h> 
:nnoremap <leader>j <A-j> 
:nnoremap <leader>k <A-k> 
:nnoremap <leader>l <A-l> 

:noremap <leader>1 1gt
:noremap <leader>2 2gt
:noremap <leader>3 3gt
:noremap <leader>4 4gt
:noremap <leader>5 5gt
:noremap <leader>6 6gt
:noremap <leader>7 7gt
:noremap <leader>8 8gt
:noremap <leader>9 9gt
:noremap <leader>0 :tablast<cr>

:noremap <leader>t :tabe<cr>
:noremap <leader>a :terminal<cr>

:vnoremap p "_dP

" Gruvbox
Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'soft'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Startify
Plug 'mhinz/vim-startify'

" Dracula
Plug 'dracula/vim'

" Godot
Plug 'calviken/vim-gdscript3'

" Omnisharp
Plug 'OmniSharp/Omnisharp-vim'
let g:syntastic_cs_checkers = ['code_checker']
let g:OmniSharp_server_stdio = 1

call plug#end()

" Tabs
set tabstop=4 
set softtabstop=0
set noexpandtab 
set shiftwidth=4
set smarttab
set autoindent

"colorscheme gruvbox
colorscheme dracula
set termguicolors
syntax on

hi Normal guibg=NONE ctermbg=NONE
