" ===========
" = misc

set visualbell t_vb=

" show line number
set number

" ===========
" = search

" incremental search
set incsearch

"検索結果をハイライトで強調
set hlsearch 

"検索で最後まで行った時に先頭に戻る
set wrapscan 

" ESC2回で検索結果のハイライトを消す
nnoremap <ESC><ESC> :noh<CR> 


" case insensitive search
" e.g.)
" /copyright      " Case insensitive
" /Copyright      " Case sensitive
" /copyright\C    " Case sensitive
" /Copyright\c    " Case insensitive
set ignorecase
set smartcase

" syntax color on
syntax on

" draw line at 80 chars
set colorcolumn=80      

" force to show at least 5 lines around currenct position 
set scrolloff=5 

" yank to Windows clipboard
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif

set report=0
