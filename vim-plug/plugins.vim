" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" File Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Surrounding
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" color Theme
Plug 'Mofiqul/vscode.nvim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Search File
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Insearch
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

" devicons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" git
Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'

" snippets
Plug 'honza/vim-snippets'

" dart
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'f-person/pubspec-assist-nvim'
Plug 'Neevash/awesome-flutter-snippets', { 'for': 'dart' }
Plug 'huylg/built-value-snippets'

" coc
Plug 'neoclide/coc.nvim', {'commit': '891d1687ac3aa8ae2c5d92cb5cf0bb8c736bf0f1'}

" tab bar
Plug 'romgrk/barbar.nvim'

" airline
Plug 'hoob3rt/lualine.nvim'

" http client
Plug 'baverman/vial'
Plug 'baverman/vial-http'

" undo tree
Plug 'mbbill/undotree'

" Toggle comment code with shortcut
Plug 'preservim/nerdcommenter'

" multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" test vim
Plug 'vim-test/vim-test'

" maximize term quickly
Plug 'szw/vim-maximizer'

" window resize
Plug 'simeji/winresizer'

call plug#end()
