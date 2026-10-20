set number
set relativenumber
set numberwidth=1
set hlsearch
set incsearch
let g:netrw_altv=1
setlocal foldmethod=marker

let mapleader = "\\"

" Normal Mode Definitions {{{
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' view<esc>a'<esc>bi'<esc>lel
nnoremap <leader>v :<c-u>execute "rightbelow vsplit " . bufname("#")
nnoremap <leader>w :<c-u>match Error /\s\+$/<cr>
nnoremap <leader>W :<c-u>match none
nnoremap <leader>nh :<c-u>nohlsearch
" }}}

" Insert Mode Definitions {{{
inoremap <c-u> <esc>viwUea
inoremap <c-s> <esc>wi
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-[> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
" }}}

iabbrev ssig -- <cr>Tom Merrill<cr>merrill.tom@gmail.com

" Operator-Pending Definitions {{{
onoremap p i(
onoremap i( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap a( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>
onoremap i{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap a{ :<c-u>normal! f{va{<cr>
onoremap al{ :<c-u>normal! F}va{<cr>
onoremap ih :<c-u>execute "normal! ?^\\(==\\+\\|--\\+\\)$\r:nohlsearch\rkvg_"<cr>
onoremap ah :<c-u>execute "normal! ?^\\(==\\+\\|--\\+\\)$\r:nohlsearch\rg_vk0"<cr>
onoremap in@ /[[:alnum:]._%+-]\+@[[:alnum:].-]\+\.[[:alpha:]]\+<cr>
" }}}

