"关闭vi兼容模式
set nocompatible
"设置退格键的行为
set backspace=indent,eol,start
set nu
set cursorline
"不折行
set wrap!
filetype on
set history=50
"开启文件类型自动识别
filetype plugin on
set background=dark
colorscheme  molokai 
"关键字上色
syntax on
set ffs=unix,dos,mac
set smarttab
"Tab 宽度为4个字符
set tabstop=4
"自动缩进时，缩进尺寸为4个空格
set shiftwidth=4
"编辑时将所有的TAB键替换为空格
set expandtab
%retab
set autoindent
set smartindent
set smarttab
set showcmd
set showmode
set showmatch
set vb t_vb=
set ruler
"搜索时高亮显示找到的文本
set hls
set incsearch
"C\C++自动缩进，在V模式下 =进行重新调整缩进
set cin
set mouse=v
"C智能缩进
set cindent
"括弧匹配
set sm
"打开普通文件类型自动缩进
set ai
autocmd BufReadPost * 
       \ if line("'\"") > 0 | if line("'\"") <= line("$") | 
       \ exe "normal '\"" | else |exe "normal $" | endif |
       \ endif
cscope add cscope.out
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,gbk,big5,euc-jp,euc-kr,latin1
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"pathogen
call pathogen#infect()
"NERDTree 
nnoremap <silent> <F5> :NERDTree<CR>
"Powerline
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"taglist
let Tlist_Show_One_File = 1
"只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1
"如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1    
"在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1
"打开taglist时，光标保留在taglist窗口
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"设置ctags命令的位置
nnoremap <silent><F6> :Tlist<CR>
"设置关闭和打开taglist窗口的快捷键
"neocomplcache
"2015/06/08，使用clang自动补齐 将neocomplcache = 0 , 否则修改为1
let g:neocomplcache_enable_at_startup = 0 
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"括弧补齐
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
"clang_complete 自动补齐
let g:clang_library_path='/usr/lib/llvm-3.4/lib/libclang.so'
