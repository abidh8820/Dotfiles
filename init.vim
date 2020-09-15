call plug#begin('~/.config/nvim/autoload/plugged') 
" convert binary, hex, etc..
   Plug 'tomasiser/vim-code-dark'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'scrooloose/nerdtree'
   Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
   Plug 'arcticicestudio/nord-vim'
   Plug 'glts/vim-radical'
   Plug 'HerringtonDarkholme/yats.vim'
   "css color
   Plug 'ap/vim-css-color' 
   " files
   Plug 'tpope/vim-eunuch'
   " repeat stuff
   Plug 'tpope/vim-repeat'
   " surround
   Plug 'ryanoasis/vim-devicons' 
   Plug 'tpope/vim-surround'
   Plug 'rhysd/vim-clang-format'
   " better comments
   Plug 'tpope/vim-commentary'
   " Plug 'preservim/nerdcommenter'
   " have the file system follow you around
   Plug 'airblade/vim-rooter'
   " auto set indent settings
   Plug 'tpope/vim-sleuth'
   Plug 'morhetz/gruvbox'
   if exists('g:vscode')
    " easy motion for vscode
   Plug 'asvetliakov/vim-easymotion'
    
  else
    " text navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    " Plug 'easymotion/vim-easymotion'
    " Add some color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'christianchiarulli/onedark.vim'
    " Plug 'kaicataldo/material.vim'
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'tomasiser/vim-code-dark'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}  " Status Line
    Plug 'vim-airline/vim-airline'

    " Plug 'vim-airline/vim-airline-themes'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    Plug 'kevinhwang91/rnvimr',{  'do' : 'make sync'} " Git
    " Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
  "    Plug 'liuchengxu/vim-which-key'
    " Zen mode
   " Plug 'junegunn/goyo.vim'
    " Making stuff
   " Plug 'neomake/neomake'
    " Snippets
    "Plug 'honza/vim-snippets'
    "Plug 'mattn/emmet-vim'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Vim Wiki
    " Plug 'https://github.com/vimwiki/vimwiki.git'
    endif

   call plug#end()

  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  syntax on
" Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=4         "the width of a tab
  set shiftwidth=4      "the width for indent
  set encoding=UTF-8
 " set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
  set incsearch
" Lookings
  set relativenumber "line number
  set cursorline       "hilight the line of the cursor
  set nowrap           "no line wrapping
  colorscheme codedark  "use the theme gruvbox
  set number
  set background=dark  "use the light version of gruvbox
  " change the color of chars over the width of 80 into blue
  " (uncomment to enable it)
  "au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  :autocmd BufNewFile *.cpp 0r ~/.temp.temp
   map<F5> :w <CR> : term g++ -std=c++17 % &&  ./a.out <CR>
   map<F4> :w <CR> :! g++ -std=c++17 % <CR>
   map<C+s> :w 
   map<F2> : term python % 
  let g:airline#extensions#tabline#enabled = 1
  " install nerd fonts complete
  let g:airline_powerline_fonts = 1
  map<F6> :w <CR> :ClangFormat <CR>

  set guifont=DroidSansMono\ Nerd\ Font\ 12
  let g:airline_theme='minimalist' "minimalist  lucius 
  :imap <uu> <Esc> 
  set clipboard=unnamedplus
