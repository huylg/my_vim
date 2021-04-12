set termguicolors
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/telescope_setup/telescope_setup.vim
source $HOME/.config/nvim/NERD_setup/NERD_setup.vim
source $HOME/.config/nvim/coc_setup/coc_setup.vim
source $HOME/.config/nvim/easymotion_setup/easymotion_setup.vim
" load dependency_assist
lua << EOF
require'dependency_assist'.setup{}
require('telescope').setup{}
EOF

" esc quit terminal mode
tnoremap <Esc> <C-\><C-n>

set number

nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

set mouse=a
set clipboard=unnamed

" Terminal Function
function! TermToggle()
    vsplit term://zsh
    startinsert
endfunction

nnoremap <s-t> :call TermToggle()<CR>
nnoremap <F9> :TagbarToggle<CR>

let g:tagbar_type_dart = { 'ctagsbin': '~/flutter/.pub-cache/bin/dart_ctags' }


nnoremap <F4> :set relativenumber!<CR>


let g:dart_format_on_save = 1

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


set cursorline
augroup CustomCursorLine
    au!    
    au ColorScheme * :hi clear CursorLine
    au ColorScheme * :hi! CursorLine gui=underline cterm=underline
augroup END

set relativenumber

set t_Co=256
colorscheme codedark
let g:airline_theme = 'codedark'


" shortcut for save
noremap <Leader>s :update<CR>

nnoremap <Space>* *N
nnoremap <Space>g* g*N

nnoremap te :tabnew .<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP
source $HOME/.config/nvim/gitgutter_setup/gitgutter_setup.vim

set spelllang=en
nnoremap <silent> <F12> :set spell!<cr>
