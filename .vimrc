set encoding=utf-8
scriptencoding utf-8

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set number " 行番号を表示
set cursorline " カーソルラインをハイライト


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

"----------------------------------
" no use
"
" Plug 'altercation/vim-colors-solarized'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'stephpy/vim-yaml'

call plug#end()

"-------------------------------------------------------------------------------
" vim-colors-solarized
"
"syntax enable
"set background=light
"colorscheme solarized

"-------------------------------------------------------------------------------
" lightline.vim
set laststatus=2

"-------------------------------------------------------------------------------
" 編集に関する設定:

" タブの画面上での幅
set tabstop=2
" 自動インデントでずれる幅
set shiftwidth=2
" タブの代わりに空白文字を指定する
set expandtab
" 新しい行のインデントを現在行と同じにする
set autoindent

"-------------------------------------------------------------------------------
" NERDTree:
"
" .ファイルの表示（1: 表示）
let NERDTreeShowHidden=1
" 引数なしで起動した場合、NERDTreeを開く
autocmd vimenter * if !argc() | NERDTree | endif

