set termguicolors
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/telescope_setup/telescope_setup.vim
source $HOME/.config/nvim/NERD_setup/NERD_tree_setup.vim
source $HOME/.config/nvim/coc_setup/coc_setup.vim
source $HOME/.config/nvim/easymotion_setup/easymotion_setup.vim
source $HOME/.config/nvim/tabline_setup/tabline_setup.vim
source $HOME/.config/nvim/far_setup/far_setup.vim
source $HOME/.config/nvim/test_vim_setup/test_vim_setup.vim
source $HOME/.config/nvim/float_term_setup/float_term_setup.vim
source $HOME/.config/nvim/maximizer_setup/maximizer_setup.vim
source $HOME/.config/nvim/undotree_setup/undotree_setup.vim
source $HOME/.config/nvim/rest_console_setup/rest_console_setup.vim
source $HOME/.config/nvim/color_scheme.vim
source $HOME/.config/nvim/gitgutter_setup/gitgutter_setup.vim
source $HOME/.config/nvim/git_messenger_setup/git_messenger_setup.vim

" load dependency_assist
lua << EOF
  require'dependency_assist'.setup{}
  require'telescope'.setup{}
  require('telescope').load_extension('coc')
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

set mouse=a
set clipboard=unnamed

" Terminal Function
function! TermToggle()
    vsplit term://zsh
    startinsert
endfunction

function! Jid()
    write .temp.json
    vsplit
    term cat .temp.json | jid . | jq
    startinsert
endfunction
command Jid call Jid()

function! Jq()
	%!jq
endfunction
command Jq call Jq()

function! Yrp()
     let @+ = expand("%")
endfunction
command Yrp call Yrp()

function! Yfp()
     let @+ = expand("%:p")
endfunction
command Yfp call Yfp()

function! Yfn()
     let @+ = expand("%:t")
endfunction
command Yfn call Yfn()

let g:dart_format_on_save = 1

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set number
set relativenumber

" shortcut for save
noremap <Leader>s :update<CR>

nnoremap <Space>* *N
nnoremap <Space>g* g*N

nnoremap te :tabnew .<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

command GuiToogle set termguicolors!

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

set spelllang=en
nnoremap <F12> :set spell!<cr>
