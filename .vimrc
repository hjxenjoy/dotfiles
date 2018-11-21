" 常用设置
" 设置行号
set number
" colorscheme hybrid
" 按F2 进入粘贴模式
" set pastetoggle=<F2>
" 高亮搜索
set hlsearch
" 相对行号
set relativenumber
" 行间距 Terminal下无效
" set linespace=3
" 当前行整行高亮
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

set nobackup
set encoding=utf-8

" 设置折叠方式
set foldmethod=indent
" 快捷键备份
" za	打开/关闭当前的折叠
" zc	关闭当前打开的折叠
" zo	打开当前的折叠
" zm	关闭所有折叠
" zM	关闭所有折叠及其嵌套的折叠
" zr	打开所有折叠
" zR	打开所有折叠及其嵌套的折叠
" zd	删除当前折叠
" zE	删除所有折叠
" zj	移动至下一个折叠
" zk	移动至上一个折叠
" zn	禁用折叠
" zN	启用折叠

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set autoindent

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" json 格式化
com! FormatJSONPy2Utf8 %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2)"

call plug#begin('~/.vim/plugged')
" start screen
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" 插件相关配置
" 禁止 startify 自动切换目录
let g:startify_change_to_dir = 0

" nerdtree
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>
