" __    ___  _     _  ____  ____  " Author: Nick Arsenault
" \ \  / / || \   / ||    \| ___| " Date: Nov. 26, 2019 
" \ \/ /| ||  \_/  ||    /| |__  " Version: 1.1
"  \__/ |_||_|\_/|_||_||_\|____| "
"""""""""""""""""""""""""""""""""""

"basics
set number relativenumber
syntax on 

setlocal foldmethod=syntax
"Auto Completion
set wildmode=longest,list,full
filetype plugin on

"Set tab settings
set tabstop=2
set expandtab
set softtabstop=2
set smartindent
set autoindent
set shiftwidth=0

"Plugins
call plug#begin()
Plug 'frazrepo/vim-rainbow'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'hdima/python-syntax'
Plug 'sainnhe/vim-color-forest-night'
Plug 'flazz/vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'dylanaraps/wal'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
call plug#end()

"Snippets"
colorscheme wal
set background=dark
"remapping keys
:nnoremap B 0
:nnoremap E $
:nnoremap $ $$<ESC>i
:nnoremap 0 <nop>

"C++ commands
autocmd FileType cpp  inoremap { {<CR>}<ESC>O<Tab>

"Auto commands HTML
autocmd FileType html inoremap vv <ESC>f>a
autocmd FileType html inoremap < <><Esc>i
autocmd FileType html inoremap ;< </><Esc>i
autocmd FileType html inoremap ;D <!DOCTYPE html><ESC>o
autocmd FileType html inoremap ;s <section></section> <ESC>F<i<CR><Esc>ko
autocmd FileType html inoremap ;H <html></html> <ESC>F<i<CR><Esc>ko
autocmd FileType html inoremap ;h <head></head> <ESC>F<i<CR><Esc>ko
autocmd FileType html inoremap ;b <body></body> <ESC>F<i<CR><Esc>ko
autocmd FileType html inoremap ;1 <h1></h1> <ESC>F<i
autocmd FileType html inoremap ;2 <h2></h2> <ESC>F<i
autocmd FileType html inoremap ;3 <h3></h3> <ESC>F<i
autocmd FileType html inoremap ;4 <h4></h4> <ESC>F<i
autocmd FileType html inoremap ;5 <h5></h5> <ESC>F<i
autocmd FileType html inoremap ;6 <h6></h6> <ESC>F<i
autocmd FileType html inoremap ;t <title></title> <ESC>F<i
autocmd FileType html inoremap ;p <p></p> <ESC>F<i
autocmd FileType html inoremap ;li <li></li> <ESC>F<i
autocmd FileType html inoremap ;ul <ul></ul> <ESC>F<i<CR><Esc>ko
autocmd FileType html inoremap ;ol <ol></ol> <ESC>F<i<CR><Esc>ko

"Functions 
"Switches between relative and regular number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" enable indentation
set breakindent

" ident by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set breakindentopt=shift:2,min:40,sbr

" append '>>' to indent
set showbreak=>>
