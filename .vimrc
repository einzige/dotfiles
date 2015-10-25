" Plugins (see https://github.com/junegunn/vim-plug)
"
" Installation:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
let g:rehash256 = 1

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai' " Colorscheme
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'
Plug 'kien/ctrlp.vim'

call plug#end()

colorscheme molokai

" Line numbers
set nu
set relativenumber

" Tabsize
set expandtab
set tabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
syntax enable
filetype plugin indent on

" Handle trailing whitespaces
autocmd FileType ruby,rb,slim,coffee,javascript,js,swift,markdown,md autocmd BufWritePre <buffer> :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
