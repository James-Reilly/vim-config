" VIM Configuration - James Reilly

set nocompatible

" Activate pathogen
call pathogen#infect()

" -- Display
set title		" Update the title of your window or terminal
set number		" Display line numbers
set ruler		" Display cursor postiton
set wrap		" Wrap line when they are too long

set scrolloff=3		" Display three line around cursor
			" (for scrolling

set guioptions=T	" Enable the toolbar

" -- Search
set ignorecase		" Ignore case when searching
set smartcase		" If there is an uppercase in your search term
			" search case senitive again
set incsearch		" Highlight search results when typing
set hlsearch		" Highlisht search results

" -- Beep
set visualbell 		" Prevent Vim from beeping
set noerrorbells	" Prevent Vim from beeping

" Backpace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when witching
" to another buffer
set hidden

" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

set background=dark
colorscheme solarized

set guifont=Monaco:h13
set antialias

"autocmd vimenter * NERDTree

" Set Control-N to toggle the tree view
map <C-n> :NERDTreeToggle<CR>

" Close NERDTree if all other files are closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
