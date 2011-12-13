set ts=4
set sw=4
set nu
set si

set bs=indent,start,eol
set autochdir
set incsearch
set wildmenu

map <C-Left> :bp<CR>
map <C-Right> :bn<CR>

" System Clipboard
map ,cc y:call system("xclip -i",@0)<CR>
map ,cv :r !xclip -o<CR>
colorscheme zellner



