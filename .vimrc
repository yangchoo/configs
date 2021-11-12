" Vimrc file cobbled from:
" - Official default: https://github.com/vim/vim/blob/master/runtime/defaults.vim
" - Vim Wikia: http://vim.wikia.com/wiki/Example_vimrc
"

" Vim-Plug - See end for individual plugin config/remap
" Auto-install vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Base16 - Nicer themes (temp. fix until issue 197 is resolved)
function FixupBase16(info)
    !sed -i '/Base16hi/\! s/a:\(attr\|guisp\)/l:\1/g' ~/.vim/plugged/base16-vim/colors/*.vim
endfunction
Plug 'chriskempson/base16-vim', { 'do': function('FixupBase16') }
" Lightline - Nicer status line
Plug 'itchyny/lightline.vim'
" Fzf - Nice files search
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
" Git Gutter
Plug 'airblade/vim-gitgutter'
" Multi-cursors - Subl-like
Plug 'terryma/vim-multiple-cursors'
" Vim Surround - keyword s (e.g. cs'", ysiw])
Plug 'tpope/vim-surround'
" Abolish.vim - Easy multi-match (:%Subert/{f,F}oo/{b,B}ar/g
Plug 'tpope/vim-abolish'
" Filetype specific commenting (e.g. <leander>cc)
Plug 'preservim/nerdcommenter'
" Automatically create closing pair for braces, parens, etc.
Plug 'lunarWatcher/auto-pairs', { 'tag': '*'  }
" Syntastic
Plug 'vim-syntastic/syntastic'
" Rust
Plug 'rust-lang/rust.vim'
" Scala
Plug 'derekwyatt/vim-scala'
" Javascript
Plug 'pangloss/vim-javascript'
" Vim autoformat
Plug 'vim-autoformat/vim-autoformat'
" Ranger - Explorer
Plug 'francoiscabrol/ranger.vim'
" Vim Tmux Navigator - Navigate between Vim/Tmux tabs
Plug 'christoomey/vim-tmux-navigator'



call plug#end()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" When the +eval feature is missing, the set command above will be skipped.
" Use a trick to reset compatible only when the +eval feature is missing.
silent! while 0
  set nocompatible
silent endwhile

filetype plugin indent on " Automatic language based indentation
syntax on " Automatic syntax highlighting

set history=1000    " keep 1000 lines of command line history
set number          " display line number on left (only for current line)
set relativenumber  " display relative line numbers (for all other lines)
set showcmd         " display incomplete commands
set showmatch       " display matching braces
set wildmenu        " display completion matches in a status line
set incsearch       " incremental search highlight

" Persistent Undo
set undodir=~/.vim/undodir
set undofile

" Indentation Options
set smartindent
set autoindent
set tabstop=8 
set softtabstop=0 
set shiftwidth=4 
set expandtab 
set smarttab

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
if has('mouse')
  set mouse=a
endif

" Split defaults
set splitbelow
set splitright

" Key Remaps
" Easier than the standard '\'
let mapleader=","
" Easier Buffer Management - "+y, allows copying to system clipboard.
" Note, `gvim` is required in order to enable this
noremap <Leader><leader> "+
" Easier Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" Plug Configs
" Base16 theming
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow-night

" Lightline
set laststatus=2
set noshowmode
let g:lightline = {
    \    'colorscheme': 'Tomorrow_Night'
    \}

" Fzf
map ; :Files<CR>

" GitGutter
set updatetime=100 " 100ms update for faster git status

