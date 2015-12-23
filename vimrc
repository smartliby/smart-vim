"basic
syntax enable
set nocompatible
set backspace=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set number
set showmatch
set mouse=a
set ruler
set showcmd
set incsearch
set sidescroll=1
set whichwrap=b,s,<,>,[,]
set foldmethod=marker
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'

Bundle 'taglist.vim'
Bundle 'L9'
Bundle 'ctrlp.vim'
Bundle 'Command-T'
Bundle 'vim-coffee-script'

"Bundle 'javacomplete'
"Bundle 'artur-shaik/vim-javacomplete2'

filetype plugin indent on

"solarized
set t_Co=16
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

"powerline
set laststatus=2
let g:Powerline_symbols = 'fancy'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1

"markdown-mode
let g:vim_markdown_folding_disabled=1

"#########################################################
"javacomplete
"设定此行在java文件中就可按(ctrl + x) + (ctrl + o) 自动补全
"autocmd Filetype java set omnifunc=javacomplete#Complete
"autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
"当文档为java和insert mode的状态下，按"."会替换成一下指令，换言之，与ide相同，当按"."会自动补全
"ex:System.  <=将会出现out等字
"autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>
"设定额外的include的classpath
"let b:classpath="~/jarFile/*"
"#########################################################

"#########################################################
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F4> <Plug>(JavaComplete-Imports-Add)
"imap <F4> <Plug>(JavaComplete-Imports-Add)
"nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
"imap <F5> <Plug>(JavaComplete-Imports-AddMissing)
"nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
"imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
"#########################################################

"keymap
let mapleader = ','
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
nnoremap <leader>c :CtrlP<CR>
