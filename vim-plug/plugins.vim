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

" Theme
Plug 'tomasiser/vim-code-dark'
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
Plug 'f-person/git-blame.nvim'

" snippets
Plug 'honza/vim-snippets'
Plug 'Neevash/awesome-flutter-snippets'

" dart
Plug 'dart-lang/dart-vim-plugin'

" outline
"Plug 'preservim/tagbar'

Plug 'szw/vim-maximizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'akinsho/dependency-assist.nvim'
Plug 'skywind3000/vim-preview'
Plug 'mkitt/tabline.vim'
Plug 'brooth/far.vim'
Plug 'voldikss/vim-floaterm'
Plug 'psliwka/vim-smoothie'
Plug 'sindrets/diffview.nvim'
call plug#end()
