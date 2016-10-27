scriptencoding utf-8
set encoding=utf-8
set t_Co=256
colorscheme wombat256i
syntax on
set laststatus=2
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nobackup
set nowritebackup
set noswapfile
set autoindent
set smarttab
set number
set colorcolumn=80

" ignore case when searching
set ignorecase
set smartcase

" highlight search
set hlsearch

" highlight current line
set cursorline

" show spaces and tabs
set list
set listchars=tab:→\ ,trail:·,nbsp:·

" toggle paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" togggle line numbers
:nmap <F3> :set invnumber<CR>

" execute program
nnoremap <F5> <esc>:w<enter>:!%:p<enter>
inoremap <F5> <esc>:w<enter>:!%:p<enter>

" bind NERDTree plugin
nnoremap <F10> :NERDTreeToggle<CR>

" bind tabs and windows
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

" pathogen
call pathogen#infect()
call pathogen#helptags()

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'pearofducks/ansible-vim'
Plugin 'nvie/vim-flake8'
call vundle#end()

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" syntastic stuff
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin indent on
syntax on

"change color of colorcolumn
highlight ColorColumn ctermbg=233
