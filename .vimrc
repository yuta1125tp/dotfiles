" ===========
" = misc
set visualbell t_vb=

" show line number
set number
" = search

" incremental search
set incsearch

"検索結果をハイライトで強調
set hlsearch hlsearch

"検 索で最後まで行っ索で最後まで行った時に先頭に戻る
set wrapscan wrapscan

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
highlight ColorColumn guibg=#202020 ctermbg=darkblue
"highlight ColorColumn ctermbg=lightgray guibg=#202020
" let &colorcolumn = join(range(81,999), ',')


" force to show at least 5 lines around currenct position
set scrolloff=5

" yank to Windows clipboard
if has("win64") || has("win32") || has("win16")
    " windows
    set clipboard=unnamed,autoselect
elseif system('uname -r') =~ "Microsoft"
    " wsl
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif

" 1行のyankを報告する
set report=0

" visual modeで文字のないところに回り込める
set virtualedit=block

"" 空白文字の可視化
"set list
"" 空画文字の可視化方法の指定
"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" 行末尾で右カーソルを押すと次の行に移動、先頭でも同様
set whichwrap=b,s,[,],<,>

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"=========
" tab
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" =========
" = netrw
" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" ヘッダを非表示にする
" let g:netrw_banner=0
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1
" vで右側に開く[ref](https://stackoverflow.com/a/36459367)
let g:netrw_altv=1

