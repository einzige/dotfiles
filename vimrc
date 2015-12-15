" Plugins (see https://github.com/junegunn/vim-plug)
"
" Installation:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
let g:rehash256 = 1

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tomasr/molokai' " Colorscheme

" Framework integrations
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'

" Syntax higlighters
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'

" Navigation plugins
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme molokai

" Line numbers
set nu
set relativenumber

" Disable creating swp files inside the working directory
set swapfile
set dir=/tmp
set viminfo='10,\"100,:20,%,n~/.viminfo

" Tabsize
set expandtab
set tabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
syntax enable
filetype plugin indent on

" Handle trailing whitespaces
autocmd FileType ruby,rb,slim,coffee,javascript,js,swift,markdown,md autocmd BufWritePre <buffer> :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" Nerdtree activate on ctrl+n
map <C-n> :NERDTreeToggle<CR>
