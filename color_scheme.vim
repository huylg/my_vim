set t_Co=256
colorscheme codedark
let g:airline_theme='codedark'

set cursorline
augroup CustomCursorLine
    au!    
    au ColorScheme * :hi clear CursorLine
    au ColorScheme * :hi! CursorLine gui=underline cterm=underline
augroup END
