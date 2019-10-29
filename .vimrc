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
