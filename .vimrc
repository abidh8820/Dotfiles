set mouse=a
  set termguicolors
  filetype plugin indent on
  syntax on

" Some useful settings
  set smartindent expandtab ignorecase smartcase incsearch relativenumber nowrap autoread
  set tabstop=4         "the width of a tab
  set shiftwidth=4      "the width for indent
  colorscheme pablo

"auto pair curlybraces
  inoremap {<ENTER> {}<LEFT><CR><ESC><S-o>

" mapping jj to esc
  inoremap jj <ESC>  

  "compile and run using file input put  
  autocmd filetype cpp map <F5> :!clear && g++ % -D LOCAL -std=c++17 -Wall -Wextra -Wconversion -Wshadow -Wfloat-equal -o  ~/Codes/prog && (timeout 5 ~/Codes/prog < ~/Codes/in) >  ~/Codes/out<CR>
  "copy to input file
  map <F4> :!xclip -o -sel clip > ~/Codes/in <CR><CR>


 " Leader key
  let mapleader=',,'

 " Copy template
  noremap <Leader>t :!cp ~/Codes/temp.cpp %<CR><CR>
  :autocmd BufNewFile *.cpp 0r ~/Codes/temp.cpp

  "note if vim-features +clipboard is not found, it will not work
  "for fast check :echo has('clipboard) = 0 if clipboard features not present,
  "need vim-gtk / vim-gtk3 package for this
  set clipboard=unnamedplus
