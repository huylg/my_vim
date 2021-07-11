let g:gitgutter_preview_win_floating = 1
let g:gitgutter_close_preview_on_escape = 1

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <F4> :GitGutterLineHighlightsToggle<cr> :GitGutterLineNrHighlightsToggle<cr>
