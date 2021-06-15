let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '-'

highlight GitGutterAdd guifg=green
highlight GitGutterChange guifg=blue
highlight GitGutterDelete guifg=red

let g:gitgutter_preview_win_floating = 1
let g:gitgutter_close_preview_on_escape = 1

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <F4> :GitGutterLineHighlightsToggle<cr> :GitGutterLineNrHighlightsToggle<cr>
