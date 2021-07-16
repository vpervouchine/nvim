call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'bfrg/vim-cpp-modern'
call plug#end()

let mapleader = " "    
set enc=utf-8    
set fenc=utf-8    
set termencoding=utf-8    
set nocompatible    
set autoindent    
set smartindent    
set tabstop=4    
set softtabstop=4    
set shiftwidth=4    
set expandtab    
set list    
set listchars=tab:>-    
set incsearch    
set smartcase    
set ignorecase    
set t_Co=256    
syntax on    
set background=dark    
let g:solarized_termcolors=256    
colorscheme solarized    
filetype plugin on    
set omnifunc=syntaxcomplete#Complete    
set ofu=syntaxcomplete#Complete    
    
set number    
set showmatch    
set comments=sl:/*,mb:\ *,elx:\ */    
set hidden    
set autowrite    
set hlsearch    
set backspace=indent,eol,start    
autocmd BufWritePre *.[hc]p* :%s/\s\+$//e    
    
let g:cpp_class_scope_highlight = 1    
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1    
let g:cpp_concepts_highlight = 1    
let c_no_curly_error = 1    
    
autocmd QuickFixCmdPost [^l]* nested cwindow    
autocmd QuickFixCmdPost l* nested lwindow    
    
map <F12> :NERDTreeToggle<CR>    
map <F7>  :NERDTreeFind<CR>    
    
map <C-P> :GFiles<CR>    
map <C-B> :Buffers<CR>    
map <C-T> :Tags<CR>    
    
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]    
set laststatus=2

set noruler noshowcmd exrc secure
