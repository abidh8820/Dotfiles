call plug#begin('~/.config/nvim/autoload/plugged') 
    Plug 'tomasiser/vim-code-dark'
    Plug 'ap/vim-css-color' 
    Plug 'ryanoasis/vim-devicons' 
    Plug 'rhysd/vim-clang-format'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'christianchiarulli/onedark.vim'
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}  " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
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
  set relativenumber "line number
  "set cursorline       "hilight the line of the cursor
  set nowrap           "no line wrapping
  colorscheme codedark  "use the theme gruvbox
  set number
  "set background=dark  "use the light version of gruvbox

  :autocmd BufNewFile *.cpp 0r ~/.temp.temp
  map<F5> :w <CR> : term g++ -std=c++17 % &&  ./a.out <CR>
  map<F4> :w <CR> :! g++ -std=c++17 % <CR>
  let g:airline#extensions#tabline#enabled = 1
  "let g:airline_powerline_fonts = 1
  map<F6> :w <CR> :ClangFormat <CR>
  set guifont=DroidSansMono\ Nerd\ Font\ 11
  let g:airline_theme='minimalist' "minimalist  lucius 
  set clipboard=unnamedplus

  "Use <C-l> for trigger snippet expand.
  imap <C-l> <Plug>(coc-snippets-expand)
  " Use <C-j> for select text for visual placeholder of snippet.
  vmap <C-j> <Plug>(coc-snippets-select)
  " Use <C-j> for jump to next placeholder, it's default of coc.nvim
  let g:coc_snippet_next = '<c-j>'
  " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
  let g:coc_snippet_prev = '<c-k>'
  " Use <C-j> for both expand and jump (make expand higher priority.)
  imap <C-j> <Plug>(coc-snippets-expand-jump)
