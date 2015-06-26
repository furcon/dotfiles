" Install vundle on first run
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
  call system("git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ryanss/vim-hackernews'
Plugin 'bling/vim-airline'
Plugin 'shime/vim-livedown'
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'
Plugin 'airblade/vim-gitgutter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'elzr/vim-json'
Plugin 'itspriddle/vim-stripper'
Plugin 'yaymukund/vim-rabl'
Plugin 'bling/vim-bufferline'
Plugin 'itchyny/lightline.vim'
call vundle#end()

" Install bundles on first run
if !isdirectory(expand("~/.vim/bundle/vim-airline"))
  execute 'silent PluginInstall'
  execute 'silent q'
endif

filetype plugin indent on
syntax on
set number
set encoding=utf-8
set fileencoding=utf-8
set nowritebackup
set noswapfile
set autoread
set laststatus=2
set nowrap
set showcmd
set ignorecase
set smartcase
highlight clear SignColumn

" Tabs
set backspace=2
set expandtab
set shiftwidth=2
set cindent
set softtabstop=2
set tabstop=2
set smarttab

" Livedown
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:livedown_autorun = 1
map gm :call LivedownPreview()<CR>

"misc
set t_Co=256
set bg:dark
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< "set metachars display
set mouse=a

"search and highlighting
set hlsearch

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


let g:go_fmt_command="goimports"
let g:airline#extensions#tabline#enabled = 1
