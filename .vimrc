set number 
syntax on
" make Vim behave in a more useful way
set nocompatible

" define number of colors
set t_Co=256

" define initial background (light/dark)
set background=dark

" define color scheme
colorscheme solarized

" always display status line
set laststatus=2

" do not show mode
set noshowmode

" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

let g:fzf_layout = { 'down': '~40%' }
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-Up> :m-2<CR>==
nnoremap <silent> <C-Down> :m+<CR>==

