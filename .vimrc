" 设置取消备份，禁止临时文件生成  
set nobackup  
set noswapfile  
" 设置在Vim中可以使用鼠标，防止终端无法拷贝  
set mouse=a 

" 显示当前行号和列号
set ruler

" 在状态栏显示正在输入的命令
set showcmd

" 左下角显示当前Vim模式
set showmode
" 修改字符集
" set encoding=utf-8 " 此项修改的时gui的菜单项编码, 不需要修改
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312
set termencoding=utf-8
" 禁止生成临时文件
set nobackup
set nowritebackup
set noswapfile
" 禁止生成undo文件, un~后缀
set noundofile

" 显示行号  
set number  

" 指定不折行
set nowrap  

" 设置代码匹配,包括括号匹配情况  
set showmatch  
" 开启及时搜索(is)  
set incsearch  

" 设置搜索高亮(hlsearch)  
set hls  

" 设置搜索时忽略大小写  
set ignorecase  

" 当搜索的时候尝试smart  
set smartcase  

" 设置C/C++方式自动对齐  
set autoindent  
set cindent  
set smartindent  

" 设置tab宽度  
set tabstop=4  

" 设置自动对齐空格数  
set shiftwidth=4  

" 按退格键时可以一次删除4个空格
" set softtabstop=4

" 编辑的时候将所有的tab设置为空格(expandtab)  
set et  

" 使用Backspace直接删除tab  
set smarttab  
" 在创建python文件时, 添加python格式的头文件
autocmd BufNewFile *.py exec ":call SetPyTitle()"
func SetPyTitle()
        " setline()函数的函数不可以跳过
        call setline(1, '#!/usr/bin/env python3')
        call setline(2, "# -*- coding: utf-8 -*-")
        call setline(3, '')
        call setline(4, "'a demo module'")
        call setline(5, "")
        call setline(6, "__author__ = 'tp young'")
endfunc
