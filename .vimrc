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

nnoremap <F10> :NERDTreeToggle<CR>

" plugin stuff
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

let g:airline#extensions#tabline#enabled = 1

" syntastic stuff
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
