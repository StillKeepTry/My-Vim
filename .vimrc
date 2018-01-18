set nu
set smarttab
set sw=4
set ts=4

execute pathogen#infect()

autocmd vimenter * NERDTree
syntax enable
colorscheme monokai

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()

filetype plugin indent on

highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#00ffff
let g:ycm_python_binary_path = '/usr/bin/python'

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = './.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_semantic_completion_toggle = '<c-f>'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set cursorline
set cursorcolumn
