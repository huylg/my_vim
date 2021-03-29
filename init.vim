source $HOME/.config/nvim/vim-plug/plugins.vim
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescopGe.builtin').help_tags()<cr>

tnoremap <Esc> <C-\><C-n>

"let g:deoplete#enable_at_startup = 1
set number

nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>
nnoremap <esc> :nohl<return><esc>
nmap <F2> :NERDTreeToggle<CR>

set mouse=a
let g:user_emmet_install_global = 0
set clipboard=unnamed
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
let g:syntastic_javascript_checkers=['eslint']

" Terminal Function
let g:term_buf = 0
let g:term_win = 0

function! TermToggle()
    vsplit term://zsh
    startinsert
endfunction

nnoremap <s-t> :call TermToggle()<CR>
nnoremap <F9> :TagbarToggle<CR>

let g:tagbar_type_dart = { 'ctagsbin': '~/flutter/.pub-cache/bin/dart_ctags' }

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <F4> :set relativenumber!<CR>

nnoremap fa :CocCommand flutter.run
nnoremap fA :CocCommand flutter.attach<cr>
nnoremap fq :CocCommand flutter.dev.quit<cr>
nnoremap fv :CocCommand flutter.dev.openDevLog<cr>
nnoremap fr :CocCommand flutter.dev.hotReload<cr>
nnoremap fR :CocCommand flutter.dev.hotRestart<cr>
nnoremap fc :CocCommand flutter.dev.clearDevLog<cr>
nnoremap fd :CocCommand flutter.dev.detach<cr>
nnoremap <F10> :CocCommand flutter.toggleOutline<cr>

let g:dart_format_on_save = 1

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let b:coc_diagnostic_disable = 1


set cursorline
augroup CustomCursorLine
    au!    
    au ColorScheme * :hi clear CursorLine
    au ColorScheme * :hi! CursorLine gui=underline cterm=underline
augroup END

set termguicolors
set relativenumber

set t_Co=256
colorscheme codedark
let g:airline_theme = 'codedark'

" load dependency_assist
lua << EOF
require('telescope').setup{}
require'dependency_assist'.setup{}
EOF

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>co :CocCommand<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" set up for  snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>x  <Plug>(coc-convert-snippet)let g:coc_snippet_next = '<tab>'

" shortcut for save
noremap <Leader>s :update<CR>

" set up shortcut for completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr><Tab> pumvisible() ? "\<down>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<up>" : "\<S-Tab>"

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

let g:lsc_enable_autocomplete = v:false
