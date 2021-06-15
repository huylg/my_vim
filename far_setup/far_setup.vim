set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital lett" shortcut for far.vim find

nnoremap <silent> <S-f><S-f>  :Farf<cr>
vnoremap <silent> <S-f><S-f>  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <S-f><S-r> :Farr<cr>
vnoremap <silent> <S-f><S-f> :Farr<cr>ers
