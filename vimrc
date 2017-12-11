" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'eiginn/netrw'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'w0ng/vim-hybrid'
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
set backspace=indent,eol,start " backspace over everything in insert mode
set laststatus=2                  " always show status bar
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
" Tabs to spaces,
set tabstop=2 shiftwidth=2 expandtab
" seriously this should be default or at least mentioned somewhere
syntax on
let g:hybrid_use_Xresources = 1
set t_Co=256

set background=dark
colorscheme hybrid
set number

"set space to leader"
nnoremap <Space> <nop>
let mapleader=" "

"leader for buffer switch
nmap <leader>l :bnext!<CR>

" Move to the previous buffer
nmap <leader>h :bprevious!<CR>

"Airline config
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Better matching on %
set nocompatible
filetype plugin on
runtime macros/matchit.vim

"Deal with that pesky end of line issues
"set virtualedit=onemore
set clipboard=unnamedplus

" JSX Indentation in js files
let g:jsx_ext_required = 0
"put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
"Make JS files add to the search
set suffixesadd+=.js
" Highlight the status bar when in insert mode
hi StatusLine ctermfg=235 ctermbg=2
" incremental seraching
set incsearch

if version >= 700
  au InsertEnter * hi StatusLine ctermbg=235 ctermfg=2
  au InsertLeave * hi StatusLine ctermfg=235 ctermbg=2
endif

" syntastic stuff
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set up some custom colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
