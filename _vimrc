set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

" set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

let mapleader=","
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set noswapfile
set guioptions-=T
set guioptions-=r
set guioptions-=b
set guioptions-=m
set backupdir=C:\vimback

set undodir=I:\vimUndo
set undofile

set nu
set si
syntax on
set bs=indent,eol,start
set ts=4
set sw=4
set autochdir
set cursorline
set wildmenu
set incsearch
map <C-left> :bp<CR>
map <C-right> :bn<CR>
map <C-DEL>	:bd<CR>
map <F9> :make<CR>
map <C-F9> :e %:t:r
map <A-up> gk
map <A-down> gj
colorscheme oceandeep
set foldmethod=marker

set guifont=Lucida\ Console:h12

command! Newtp -1read I:\MyProgram\codeforces\template.cc
au BufNew,BufAdd,BufEnter *.cc,*.cpp :source $VIMRUNTIME/mycpp.vim
au BufNew,BufAdd,BufEnter *.py :source $VIMRUNTIME/mypython.vim



let Tlist_Ctags_Cmd='D:\ctags58\ctags.exe'
set encoding=cp936
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
language message zh_CN.cp936


""Python Auto-Complection
filetype plugin on
let g:pydiction_location = $VIMRUNTIME.'/tools/pydiction/complete-dict'

""Shortkey for Win Manager
map <C-W><C-T> :WMToggle<CR>
map <C-W><C-F> :FirstExplorerWindow<CR>
map <C-W><C-B> :BottomExplorerWindow<CR>

""Shortkey for TagList
map ,tg :TlistToggle<CR>

let g:DoxygenToolkit_authorName="cylixstar cylixstar@gmail.com"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

let $mrzs_game_editor_dir = 'I:\MyProgram\Projects\mrzs\Engine\GameEditor\'


if has("win32")

endif
