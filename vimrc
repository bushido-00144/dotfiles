set number
syntax on
colorscheme desert
set laststatus=2
"set statusline=%f\ line:%l\ collum:%c
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set cursorline
set ruler

set tabstop=4
set expandtab
set shiftwidth=4
set background=dark

execute pathogen#infect()

" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
  
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"plugins
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'

"color schemes
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()
   
" Required:
filetype plugin indent on


NeoBundleCheck


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
