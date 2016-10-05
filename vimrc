set number
syntax on
colorscheme blues
set laststatus=2
"set statusline=%f\ line:%l\ collum:%c
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set cursorline
set cursorcolumn
set ruler
set undodir=~/.vim/undo
set nobackup

set tabstop=4
set expandtab
set shiftwidth=4
set background=dark

set backspace=indent,eol,start

set shell=bash

call plug#begin('~/.vim/plugged')

 " コマンド実行時に読み込む
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }
Plug 'scrooloose/syntastic'
Plug 'othree/yajs.vim'            " es6のハイライト
Plug 'othree/es.next.syntax.vim'  " stage-0 のsyntax highlight
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neocomplete.vim'
Plug 'tomtom/tcomment_vim'
"color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'jacoborus/tender'
Plug 'vim-scripts/oceandeep'
Plug 'vim-scripts/sift'
Plug 'shaond/vim-guru'
Plug 'limadm/vim-blues'
Plug 'joshdick/onedark.vim'
Plug 'mkarmona/colorsbox'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"execute pathogen#infect()

   
" Required:
filetype plugin indent on

let g:syntastic_mode_map = {
    \ "mode" : "active",
    \ "active_filetypes" : ["javascript", "json"],
\}



"" JavaScript
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=4 expandtab
autocmd BufNewFile,BufReadPost *.json set filetype=javascript

"" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"" Syntastic
let g:syntastic_javascript_checkers = ['jshint']

"plugin settings
nnoremap <silent><C-e> :NERDTreeToggle<CR>

let g:neocomplete#enable_at_startup = 1

" Plugin key-mappings.
 imap <C-k>     <Plug>(neosnippet_expand_or_jump)
 smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 xmap <C-k>     <Plug>(neosnippet_expand_target)

 " SuperTab like snippets behavior.
 "imap <expr><TAB>
 " \ pumvisible() ? "\<C-n>" :
 " \ neosnippet#expandable_or_jumpable() ?
 " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
 if has('conceal')
   set conceallevel=2 concealcursor=niv
   endif
 "
