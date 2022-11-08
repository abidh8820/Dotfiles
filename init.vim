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
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim'
   call plug#end()

  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac

  set mouse=a
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
"  set cursorline       "hilight the line of the cursor
  set nowrap           "no line wrapping
  colorscheme codedark  "use the theme gruvbox
  set number
  set bg=dark  "use the light version of gruvbox

  let g:Codesdir=$HOME . "/Codes"

  autocmd filetype cpp map <F5> :! g++ % -D LOCAL -std=c++17 -o /home/abidh8820/Codes/program && (timeout 5 /home/abidh8820/Codes/program < /home/abidh8820/Codes/in) >  /home/abidh8820/Codes/out<CR>

  "functions

"Copy/Paste Output/Input
  fu UpdateInput()
    exe "silent !xclip -o -sel clip > " . g:Codesdir . "/in"
  endfu

  fu CopyOutput()
    exe "silent !xclip -sel clip " . g:Codesdir . "/out"
  endfu

 
  map <F4> :call UpdateInput() <CR>
  map<leader><F3> :call CopyOutput() <CR>


 " Leader key
  let mapleader=',,'

  noremap <C-s> :w <CR>
  inoremap <C-s> <ESC>:w<CR>

 " Copy template
  noremap <Leader>t :!cp temp.temp %<CR><CR>

  :autocmd BufNewFile *.cpp 0r ~/.temp.temp
  map<F5> :w <CR> : term g++ -std=c++17 % &&  ./a.out <CR>


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


  let g:airline#extensions#tabline#enabled = 1
  "let g:airline_powerline_fonts = 1
  map<F6> :w <CR> :ClangFormat <CR>
  set guifont=DroidSansMono\ Nerd\ Font\ 11
  let g:airline_theme='minimalist' "minimalist  lucius 
  set clipboard=unnamedplus

"  let g:coc_snippet_next = '<c-j>'
  " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"  let g:coc_snippet_prev = '<c-k>'
