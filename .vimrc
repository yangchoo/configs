" Vimrc file cobbled from:
" - Official default: https://github.com/vim/vim/blob/master/runtime/defaults.vim
" - Vim Wikia: http://vim.wikia.com/wiki/Example_vimrc

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

colorscheme Tomorrow-Night

filetype plugin indent on " Automatic language based indentation
syntax on " Automatic syntax highlighting

set history=200 " keep 200 lines of command line history
set number      " display line number on left
set showcmd     " display incomplete commands
set showmatch   " display matching braces
set wildmenu    " display completion matches in a status line

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

