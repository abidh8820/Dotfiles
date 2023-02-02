  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8
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
  colorscheme pablo

  autocmd filetype cpp map <F5> :! g++ % -D LOCAL -std=c++17 -o  /home/abidh8820/Codes/program && (timeout 5 /home/abidh8820/Codes/program < /home/abidh8820/Codes/in) >  /home/abidh8820/Codes/out<CR>

  let g:Codesdir=$HOME . "/Codes"

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
  set clipboard=unnamedplus


" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
