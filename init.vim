set termguicolors
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/telescope_setup/telescope_setup.vim
source $HOME/.config/nvim/NERD_setup/NERD_setup.vim
source $HOME/.config/nvim/coc_setup/coc_setup.vim
source $HOME/.config/nvim/easymotion_setup/easymotion_setup.vim
source $HOME/.config/nvim/tabline_setup/tabline_setup.vim
source $HOME/.config/nvim/limelight_setup/limelight_setup.vim
" load dependency_assist
lua << EOF
  require'dependency_assist'.setup{}
  require'telescope'.setup{}
  require'nvim-web-devicons'.setup {
  override = {
   zsh = {
     icon = "",
     color = "#428850",
     name = "Zsh"
   }
  };
  default = true;
  }
EOF

" esc quit terminal mode
tnoremap <Esc> <C-\><C-n>

set number

nnoremap <silent><F3> :MaximizerToggle<CR>
tnoremap <silent><F3> <C-\><C-n>:MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

set mouse=a
set clipboard=unnamed

" Terminal Function
function! TermToggle()
    vsplit term://zsh
    startinsert
endfunction

function! Jq()
	%!jq
endfunction

function! Yrp()
     let @+ = expand("%")
endfunction

function! Yfp()
     let @+ = expand("%")
endfunction

function! Yfn()
     let @+ = expand("%")
endfunction

nnoremap <s-t> :call TermToggle()<CR>
"nnoremap <F9> :TagbarToggle<CR>

let g:floaterm_position = 'auto'
let g:floaterm_height = 0.6
let g:floaterm_width = 0.6
nnoremap <F5>    :FloatermNew<CR>
tnoremap <F5>    <C-\><C-n>:FloatermNew<CR>
nnoremap <F6>    :FloatermPrev<CR>
tnoremap <F6>    <C-\><C-n>:FloatermPrev<CR>
nnoremap <F7>    :FloatermNext<CR>
tnoremap <F7>    <C-\><C-n>:FloatermNext<CR>
nnoremap <F8>   :FloatermToggle<CR>
tnoremap <F8>   <C-\><C-n>:FloatermToggle<CR>

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
nnoremap <F12> :set spell!<cr>


