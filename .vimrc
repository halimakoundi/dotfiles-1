" global settings
set nocompatible
set noswapfile
set undofile
set undodir=$HOME/.vim/undo
set spell spelllang=en_gb

" buffers can be switched despite having changes
set hidden

" file settings
set encoding=utf-8

" key mappings
let mapleader = ","
nmap <leader>p :set paste!<CR>
nmap <leader>h :set hlsearch!<CR>
nmap <leader>t :wa <bar> :Make test<CR>

" navigate buffers by ctrl-b
nmap <C-b> :bprevious<CR>

" YCM
nnoremap <Leader>g :YcmCompleter GoTo<CR>

nnoremap ; :

" no cheating !
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" for damaged keyboards
map <F1> <Esc>
imap <F1> <Esc>

" special chars
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" plugins

filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/cyplo/vim-colors-solarized.git'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'wting/rust.vim'
Plugin 'sjl/splice.vim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'timonv/vim-cargo'
Plugin 'kien/ctrlp.vim'
Plugin 'will133/vim-dirdiff'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" colours
set t_Co=256
syntax enable
set background=dark
highlight clear SignColumn
colorscheme solarized

" plugins: airline
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" plugins: rust
let g:rustfmt_autosave = 1

" plugins: ag/ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" appearance
set number
set relativenumber
set laststatus=2
set noshowmode
set showtabline=1 "only show tabline when more than 1 tab

" exclude quickfix from the buffers list
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" vimdiff
set diffopt+=iwhite
set diffexpr=""
