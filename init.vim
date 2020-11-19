source $HOME/.config/nvim/vim-plug/plugins.vim
" let $FZF_DEFAULT_COMMAND = 'fzf'
inoremap <C-Space> <C-n>
nnoremap <C-p> :Files<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'
map <S-f> :Ag<CR>

tnoremap <C-q> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>

let g:deoplete#enable_at_startup = 1
set number
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>
nnoremap <esc> :noh<return><esc>
nmap <F2> :NERDTreeToggle<CR>
noremap <S-u> :u<CR>
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
    if win_gotoid(g:term_win)
        hide
    else
        vert new
        exec "vert resize 80"
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <s-t> :call TermToggle()<CR>
nnoremap <F8> :TagbarToggle<CR>

let g:tagbar_type_dart = { 'ctagsbin': '~/flutter/.pub-cache/bin/dart_ctags' }
set tabstop=4
hi Pmenu ctermbg=black ctermfg=white
colorscheme gruvbox
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:lsc_auto_map = v:true
let g:dart_format_on_save = 1

