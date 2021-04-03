" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'morhetz/gruvbox'
"Plug 'bundle/ctrlp.vim'
Plug 'preservim/tagbar'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
" runtime! archlinux.vim
" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
" turn hybrid line numbers on
set number relativenumber
set nu rnu
" turn hybrid line numbers off
"set nonumber norelativenumber
"set nonu nornu
" toggle hybrid line numbers
"set number! relativenumber!
"set nu! rnu!
" set number
syntax on
set scrolloff=8
set ruler
"colorscheme torte
"colourscheme industry"
set autoindent
set matchpairs+=<:>
