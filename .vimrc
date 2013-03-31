"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"左右分割窗口Ctrl+w+v
""上下分割窗口Ctrl+w+s
"关闭窗口Ctrl+w+q
"设置颜色主题为desert
colorscheme desert
"不使用vi默认键盘布局
set nocompatible
"历史文件行数
set history=100
"在处理未保存文件时弹出确认
set confirm
"保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"设置vim窗口大小
set lines=25 columns=70
" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%101v.*'
" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
"显示行号
set number
"按F2选择行号显示
nnoremap <F2> :set nonumber!<CR>
"自动对齐
set autoindent
"智能对齐
set smartindent
"括号匹配模式
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
" 在搜索的时候忽略大小写
" 不要高亮被搜索的句子（phrases）
set nohlsearch
set ignorecase
"显示状态行
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
"设置高亮搜索
"set hlsearch
"输入字符串就显示匹配点
set incsearch
"输入命令显示出来
set showcmd
"显示命令行状态
set showmode
"tab键为4个空格，python缩进是4个空格
set tabstop=4
"软tab键
set softtabstop=4
"缩进为4个空格
set shiftwidth=4
"空格代替制表符
set expandtab
"页面文字宽度
set textwidth=79
"c语言格式对齐
set cindent
"不要备份文件
set nobackup
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide
"与窗口共享剪贴板
set clipboard+=unnamed
"支持语法高亮
syntax on
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"补全时菜单式显示匹配列表
set wildmenu
"允许退格键删除
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
"启动鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"文件类型
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
"按<za>在+处展开或折叠，<zn>全部展开
set foldmethod=indent
"设置编码自动识别
"set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom
set fileencodings=utf-8,gbk
set ambiwidth=double
"输入命令显示出来
nnoremap <Down> gj
nnoremap <Up> gk
"打开当前目录文件列表
"map <F3> :e .<CR>
"Taglist
let Tlist_File_Fold_Auto_Close=1
set updatetime=1000
map <F4> :Tlist <CR>
"按F8智能补全
inoremap <F8> <C-x><C-o>
"vim自动补全python代码
autocmd Filetype python set complete+=k~/.vim/tools/pydiction
"自动使用新文件模板
autocmd BufNewFile *.py 0r ~/.vim/template/simple.py
"Format the statussline
"Nice statusbar
set laststatus=2
set statusline=
set statusline+=%2*%-3.3n%0*\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
set statusline+=\ %{VimBuddy()} " vim buddy
endif
set statusline+=%= " right align
"set statusline+=%2*0x%-8B\ " current char
set statusline+=0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"c/c++环境
set tags+=/usr/include/c++/tags
set tags+=/usr/include/tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TlistToggle4.6
let g:ctags_statusline=1  
let generate_tags=1  
let Tlist_Use_Horiz_Window=0  
map <F4> : TlistToggle<cr>   
let Tlist_Use_Left_Window=1  
let Tlist_Compact_Format=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_GainFocus_On_toggleOpen=1  
let Tlist_File_Fold_Auto_Close=1   
let Tlist_GainFocus_On_ToggleOpen = 1
""""""""""""""""""""""""""""""""""""""""''""""""""""""""
"NERDTreeToggle
"按F3切换树形目录
map <F3> :NERDTreeToggle<CR>
