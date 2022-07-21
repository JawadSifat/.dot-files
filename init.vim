""" INIT NEOVIM CONFIG MASTER FILE 

""" Help 
" <C> is the ctrl key
" <A> is the alt key


""" I. Basic utilities Tweaks
set nocompatible		    " Disable compatability to old time vi
set showmatch			    " Show matching
set ignorecase			    " Case insensitive
set mouse=v			        " Middle click paste
set hlsearch			    " highlight search
set incsearch 			    " incremental search
set tabstop=4			    " Four spaces/columns to a tab
set softtabstop=4	        " Sees multiple spaces 
set expandtab			    " converts tab to basic white space
set shiftwidth=4		    " width for autoindents
set autoindent			    " Indent pattern stays the same between lines
set number			        " Line numbers!!!
set wildmode=longest,list 	" Bash-tab completions
"set cc=80			        " 70 lines for optimal Pascal XD, 10 extra columns
filetype plugin indent on 	" allow auto-indenting based on file
syntax on			        " Syntax highlighting
set mouse=a			        " Mouse clicky click you heretic
set clipboard=unnamedplus 	" System clipboard is the best clipboard
"set cursorline			    " Highlight cursor for blind people
set ttyfast			        " Speed up scrolling
set encoding=UTF-8          " All my homies ditch ASCII


""" II. PLUGGED: a Neovim plugin manager by junegunn

" Syntax: Plug 'Link to github repo'

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree'                               " NERDTREE
Plug 'ryanoasis/vim-devicons'                           " Developer Icons with wide support for plugins
Plug 'vim-airline/vim-airline'                          " Vim Airline Services 
Plug 'vim-airline/vim-airline-themes'                   " Related Themes ^^^
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }      " Tokyo Night Theme
Plug 'edluffy/hologram.nvim'                            " Hologram for viewing images

call plug#end()


" NERDTREE bindings
" nnoremap <leader>n :NERDTreeFocus<CR>                  
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Default arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Devicons Nerd Font
set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1

" Airline
let g:airline#extensions#tabline#enabled = 1

" COLORSCHEME AND THEME
colorscheme tokyonight

" Vim script for viewing images
au BufEnter *.jpg,*.png terminal timg %
