set tabstop=4
filetype indent on
set mouse=a

colorscheme onedark

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!/usr/bin/python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!/usr/bin/python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
:set wildignore+=**/venv/**

" enable syntax highlighting
syntax enable

" show line numbers
set number relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
set colorcolumn=80

" How to do 90% of What plugins DO with just vim
" enter the current millenium
set nocompatible


" enable syntax and plugins (for netrw)
" syntax enable
filetype plugin on

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" TAG JUMPING:
" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
" let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open pslits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
