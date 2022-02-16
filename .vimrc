set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'isRuslan/vim-es6'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-rails'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'KeitaNakamura/neodark.vim'
Plug 'wincent/command-t'
Plug 'thoughtbot/vim-rspec'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'janko-m/vim-test'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'chriskempson/base16-vim'
" Color schemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim' " ayu theme
Plug 'mhartington/oceanic-next'
Plug 'crusoexia/vim-monokai'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'w0rp/ale'

" Fulltext search
" Requirements:
" brew install the_silver_searcher
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Vim snippets
" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

syntax enable

set termguicolors

" Want utf8 at all times
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

set ruler                      " Always show current position
set cmdheight=1                " Height of the command bar
set laststatus=2               " Always show the status line

set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Lovely linenumbers
set nu

:set relativenumber
":set norelativenumber  " turn relative line numbers off
":set relativenumber!   " toggle relative line numbers

" Searching
set hlsearch

" For backspace
set backspace=indent,eol,start

" NERDTree options
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1 " Does not show Press ? for help 

" CtrlP new shortcut
" map ff :CtrlP<.><cr>
" Command T plugin
"map ff :CommandT<CR>
nmap <C-p> :CommandT<CR>

if (has("termguicolors"))
  set termguicolors
endif
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
" Neodark theme: If you want to change background, set the 6 digit color code:
"colorscheme neodark
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Eighties
colorscheme OceanicNext
"let g:neodark#background = '#202020'
"let g:neodark#use_256color = 1 " default: 0
"let g:neodark#terminal_transparent = 1 " default: 0
"let g:neodark#solid_vertsplit = 1 " default: 0

" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore. If a custom listing command is being used, exclusions are ignored:

set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/node_modules/*     " Don't search inside Node.js modules
set wildignore+=*/public/packs     " Don't search inside Node.js modules
set wildignore+=*/public/packs-test     " Don't search inside Node.js modules
  "let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  "let g:ctrlp_custom_ignore = {
  "  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules\|vendor|tmp)$',
  "  \ 'file': '\v\.(exe|so|dll)$',
  "  \ 'link': 'some_bad_symbolic_links',
  "  \ }
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" vim-rspec
let g:rspec_command = "bundle exec rspec {spec}"


" Rspec 
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" NerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR> " open NerdTree on the file you’re editing

nmap <S-Enter> O<Esc>

" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['rubocop', 'reek', 'scss_lint']

" VIM TMUX Integration (https://thoughtbot.com/upcase/videos/tmux-vim-integration)
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Run tests in a TMUX window
let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>f :VtrFocusRunner<cr>
