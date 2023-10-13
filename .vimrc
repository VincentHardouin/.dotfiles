set number 
set scrolloff=6
syntax on
" make Vim behave in a more useful way
set nocompatible

" define number of colors
set t_Co=256

" define initial background (light/dark)
set background=dark

" define color scheme

" always display status line
set laststatus=2

" do not show mode
set noshowmode

" highlight all matches 
set hlsearch
set incsearch
set ignorecase
set smartcase

set encoding=utf-8

" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug '907th/vim-auto-save'
Plug 'joshdick/onedark.vim'

call plug#end()

let g:fzf_layout = { 'down': '~40%' }
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-Up> :m-2<CR>==
nnoremap <silent> <C-Down> :m+<CR>==

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1

" Disable autocomment line 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

