" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'preservim/nerdtree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
" Plug 'reasonml-editor/vim-reason-plus'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'"
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'szw/vim-maximizer'
Plug 'mattn/emmet-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'eslint/eslint'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'vim-syntastic/syntastic'

Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
call plug#end()
