set nocompatible               " be improved, required
filetype off                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
Plugin 'VundleVim/Vundle.vim'  " required

" ide
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" completion
Plugin 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" go
Plugin 'fatih/vim-go'

" terraform
Plugin 'hashivim/vim-terraform'
Plugin 'mustache/vim-mustache-handlebars'

" javascrip/typescript
Plugin 'leafgarland/typescript-vim' " TypeScript syntax
Plugin 'pangloss/vim-javascript'    " JavaScript support

" theme
Plugin 'arzg/vim-colors-xcode'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
call vundle#end()               " required
filetype plugin indent on       " it turns on detection, plugin and indent at once 

" sources
source $HOME/.config/nvim/plug-config/coc.vim

" General configuration
" :h autoread - will show the description
" :optinos will show all possible options
syntax on
set encoding=utf-8
set autoindent
set autoread
set smartindent
set expandtab
set spelllang=en
set spellfile=$HOME/dev/dotfiles/vim/spell/en.utf-8.add
set hlsearch
set ignorecase
set smartcase
set splitbelow splitright
set incsearch
set noswapfile
set nobackup
set undodir=$HOME/.config/nvim/undodir
set undofile
set noerrorbells
set scrolloff=10
set noswapfile
set signcolumn=yes

" relative numbers
set number relativenumber

" Ignore files in NERDTree
let g:NERDTreeIgnore=[
                        \'\.pyc$',
                        \'\~$',
                        \'^venv$',
                        \'^.*.egg-info$',
                        \'^__pycache__$',
                        \'^.class',
                        \'^node_modules'
                        \]

" exclude .git folder for ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Flagging unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-U> :UndotreeShow<CR>

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead Jenkinsfil*
    \ set tabstop=1 |
    \ set softtabstop=1 |
    \ set shiftwidth=1 |
    \ setf groovy

au BufNewFile,BufRead Fastfile setf ruby

autocmd BufRead,BufNewFile *.md setlocal spell

"maps
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

"color scheme
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:ale_disable_lsp = 1

"set statusline^=%{coc#status()}
let g:airline#extensions#coc#enabled = 1

set background=light
colorscheme xcodelighthc
