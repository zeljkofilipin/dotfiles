" display
"
" absolute line numbers
set number
" relative line numbers
set relativenumber
" whitespace
set list



" search
"
" fuzzy finder
nnoremap <C-p> :<C-u>FZF<CR>
" search hightlight foreground and background colors
highlight Search ctermfg=Black ctermbg=DarkGreen



" file
"
" reload file if it has been changed outside vim
set autoread



" indentation
"
" tabs
set tabstop=2

" indents
set shiftwidth=2

" number of columns for a tab
set softtabstop=2

" expand tabs to spaces
set expandtab



" folding
set foldmethod=indent

" terminal
"
" switch from terminal to normal mode with <Esc>
tnoremap <Esc> <C-\><C-n>
" send <Esc> to a command in terminal with <C-v><Esc> (verbose <Esc>)
tnoremap <C-v><Esc> <Esc>
