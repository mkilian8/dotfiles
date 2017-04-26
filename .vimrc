set nocompatible
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=nic

set t_ut=
set t_Co=256
colorscheme badwolf
set number
set cursorline
set laststatus=2
set hlsearch

set foldopen-=search

set pastetoggle=<F2>
nmap <F3> :TagbarToggle<CR>
nmap <F4> :NERDTreeToggle<CR>
nmap <F5> :nohlsearch<CR>
nmap <C-h> :tabm -1<CR>
nmap <C-l> :tabm +1<CR>
nmap <C-j> :tabp<CR>
nmap <C-k> :tabn<CR>
noremap j 5j
noremap k 5k
nmap <C-s> :w \| !~/scripts/vagrantsync %:p<CR>
nmap <C-_> :.s/^#*/#/ \| nohlsearch<CR>
nmap <lt>n :cn<CR>
nmap <lt>N :cN<CR>
nmap <lt>q ciw'<C-r>"'<Esc>


filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-fugitive/vim-fugitive'
Plugin 'syntastic/syntastic'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kylef/apiblueprint.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Tuxdude/mark.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mxw/vim-jsx'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ternjs/tern_for_vim'

call vundle#end()
filetype plugin indent on

let g:ctrlp_default_input = 1

let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1


let g:tagbar_type_python = {
    \ 'sort': 0,
    \ 'kinds' : [
        \ 'i:imports:1:0',
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:members',
        \ 'v:variables:0:0',
        \ 'o:owlspecials'
    \ ]
\ }


let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
let g:syntastic_javascript_checkers =  ['eslint']



let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=tern#Complete


set exrc
set secure

let vimrcs = [ '/home/marton/Projects/OwlPractice/' ]

