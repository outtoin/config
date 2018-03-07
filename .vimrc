set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'The-NERD-Tree'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'SuperTab'
Plugin 'Auto-pairs'
Plugin 'zenbro/mirror.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Syntax Highlighting
filetype plugin indent on
syntax enable
let g:neocomplete#enable_at_startup = 1

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 1

if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:SuperTabContextDefaultCompletionType = "context"
"

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set backspace=2
set nu
set ts=4
set tabstop=4
set showmatch
set laststatus=2
"set hlsearch " 검색어 하이라이팅
"set nu " 줄번호
"set softtabstop=4
"set tabstop=4
"set ruler " 현재 커서 위치 표시
"
let mapleader=","
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }

"color jellybeans
colorscheme onedark

" taglist
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_inc_Winwidth=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Display_Tag_Scope = 1
let Tlist_Display_Prototype = 1
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
let Tlist_WinWidth = 60
"
nnoremap <C-T> :Tlist<CR>
""nnoremap <F11> <C-t>
""
set tags=./tags,../tags,../../tags
set tags+=/Users/outtoin/Documents/2017-2/CS330/pintos1/tags

" BufTab
"nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
