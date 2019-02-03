" General
  set nocompatible
  set encoding=utf-8
  set visualbell
  set clipboard=unnamed

  " Visual
  syntax enable
  set number
  set ruler
  set showtabline=2
  set showcmd
  set cursorline
  filetype plugin on

  set listchars=tab:▸\ ,eol:¬,space:·
  map <leader>l :set list!<CR>

  " Match and Search
    " highlight matching [{()}]
    set showmatch
    " search as characters are entered
    set incsearch
    " highlight matches
    set hlsearch
    set ignorecase
    set smartcase


  " File searching
  set path+=**
  set wildignore+=**/node_modules/**
  set wildmenu

set lazyredraw
set ttyfast

set hidden

" Formating
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
  set smarttab
  set autoindent
  set smartindent

" Key Mappings
  set mouse=a
  set mousehide
  inoremap ;; <Esc>

  " Allow backspace in insert mode
  set backspace=indent,eol,start

  " Quickly move current line above or below
  nnoremap <C-k><C-k> :<C-u>execute 'move -1-'. v:count1<CR>
  nnoremap <C-j><C-j> :<C-u>execute 'move +'. v:count1<CR>

  " Tabs
  nnoremap <silent> <Tab><Tab> :tabnew<CR>
  nnoremap <silent> <Tab>q :tabclose<CR>
  nnoremap <silent> <Tab>o :tabonly<CR>
  nnoremap <silent> <Tab>s :tabs<CR>
  nnoremap <silent> <Tab>^ :tabfirst<CR>
  nnoremap <silent> <Tab>$ :tablast<CR>
  nnoremap <silent> <Tab>k :tabfirst<CR>
  nnoremap <silent> <Tab>j :tablast<CR>
  nnoremap <silent> <Tab>l :tabnext<CR>
  nnoremap <silent> <Tab>h :tabprevious<CR>
  nnoremap <silent> <Tab>n :tabnext<CR>
  nnoremap <silent> <Tab>p :tabprevious<CR>
  nnoremap <silent> <Tab><Right> :tabnext<CR>
  nnoremap <silent> <Tab><Left> :tabprevious<CR>
  nnoremap <silent> <Tab>1 :tabnext 1<CR>
  nnoremap <silent> <Tab>2 :tabnext 2<CR>
  nnoremap <silent> <Tab>3 :tabnext 3<CR>
  nnoremap <silent> <Tab>4 :tabnext 4<CR>
  nnoremap <silent> <Tab>5 :tabnext 5<CR>
  nnoremap <silent> <Tab>6 :tabnext 6<CR>
  nnoremap <silent> <Tab>7 :tabnext 7<CR>
  nnoremap <silent> <Tab>8 :tabnext 8<CR>
  nnoremap <silent> <Tab>9 :tabnext 9<CR>

" Plugins
call plug#begin('~/.vim/plugged')
  source ~/.plugin.vim
call plug#end()

source ~/.post-plugin.vim
