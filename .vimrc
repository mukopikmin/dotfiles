colorscheme molokai
syntax on
set number
set notitle
set ambiwidth=double
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

" MacVim
if has('gui_macvim')
    set transparency=10
    set showtabline=2
    set imdisable
    set antialias
    set guifont=Monaco:h11
    set columns=100
    set lines=30
    set guioptions-=T
    set nobackup

    colorscheme molokai
endif
