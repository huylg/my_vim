" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
"Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'preservim/nerdtree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'"
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'szw/vim-maximizer'
"Plug 'mattn/emmet-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'eslint/eslint'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
"Plug 'vim-syntastic/syntastic'
Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/tagbar'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
"Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'akinsho/dependency-assist.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'honza/vim-snippets'
Plug 'Neevash/awesome-flutter-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'skywind3000/vim-preview'
Plug 'mkitt/tabline.vim'
call plug#end()
