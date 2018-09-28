execute pathogen#infect()
syntax on
filetype plugin indent on

set smartindent
set expandtab
set tabstop=2
set softtabstop=2 " default to 2 spaces for the soft tab
set shiftwidth=2

" turn on the mouse
set mouse=a

set relativenumber  "use relative line numbers
set number "but still show the current absolute line num

" resize splits when inactive
" set winwidth=84
" set winheight=5
" set winminheight=5
" set winheight=999

" matches all [{(
set showmatch

" improves vim search
set incsearch
set hlsearch

set runtimepath^=~/.vim/bundle/ctrlp.vim

let NERDTreeDirArrows=0
" after building your container run this at vim command line and restart vim 
" :helptags ~/.vim/bundle/ctrlp.vim/doc


" Testing
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <C-n> :NERDTreeToggle<CR>

" Use bin/rspec for fast Spring tests
let g:rspec_command = '!bundle exec bin/rspec {spec}'



" coverage.vim
let g:coverage_json_report_path = 'coverage/coverage.json'
let g:coverage_sign_covered = '⦿'
let g:coverage_interval = 5000

call plug#begin()
Plug 'ruanyl/coverage.vim'
Plug 'janko-m/vim-test'
call plug#end()
