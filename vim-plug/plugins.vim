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
Plug 'brooth/far.vim'

" devicons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" git
Plug 'airblade/vim-gitgutter'
Plug 'f-person/git-blame.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'rhysd/git-messenger.vim'

" snippets
Plug 'honza/vim-snippets'
Plug 'Neevash/awesome-flutter-snippets'

" dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/dependency-assist.nvim'
			
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" debug plugin
Plug 'mfussenegger/nvim-dap'

" tab bar
Plug 'mkitt/tabline.vim'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" http client
Plug 'baverman/vial'
Plug 'baverman/vial-http'

" undo tree
Plug 'mbbill/undotree'

" Toggle comment code with shortcut
Plug 'preservim/nerdcommenter'

" multi cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" float tearminal``
Plug 'voldikss/vim-floaterm'

" test vim
Plug 'vim-test/vim-test'

" maximize term quickly
Plug 'szw/vim-maximizer'

" window resize
Plug 'simeji/winresizer'

call plug#end()
