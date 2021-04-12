" temporarily diable coc when easy-motion is on
autocmd User EasyMotionPromptBegin silent! CocDisable
autocmd User EasyMotionPromptEnd silent! CocEnable
autocmd User EasyMotionPromptEnd silent! CocEnableet

" set up for easymotion x incsearch x fuzzy
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map e/ <Plug>(incsearch-easymotion-/)
map e? <Plug>(incsearch-easymotion-?)
map eg/ <Plug>(incsearch-easymotion-stay)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" F5 will find the next occurrence after vimgrep
map <F5> :cp!<CR>
" F6 will find the previous occurrence after vimgrep
map <F6> :cn!<CR>
" F7 search for Word under the cursor recursively , :copen , to close -> :ccl
nnoremap <F7> :vim // %<CR>:botright copen <CR>
" F8 close quick fix window
nnoremap <F8> :ccl<CR>

" esc will unselect text
nnoremap <esc> :nohl<return><esc>
