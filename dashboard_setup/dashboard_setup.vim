let g:dashboard_custom_header =<< trim END
 __     ______  _    _ _   _  _____ ____   ______     __   _____ _____   _______ _____ _   _ _    _ 
 \ \   / / __ \| |  | | \ | |/ ____|  _ \ / __ \ \   / /  / ____|_   _| |__   __|_   _| \ | | |  | |
  \ \_/ / |  | | |  | |  \| | |  __| |_) | |  | \ \_/ /  | (___   | |      | |    | | |  \| | |__| |
   \   /| |  | | |  | | . ` | | |_ |  _ <| |  | |\   /    \___ \  | |      | |    | | | . ` |  __  |
    | | | |__| | |__| | |\  | |__| | |_) | |__| | | |     ____) |_| |_     | |   _| |_| |\  | |  | |
    |_|  \____/ \____/|_| \_|\_____|____/ \____/  |_|    |_____/|_____|    |_|  |_____|_| \_|_|  |_|
                                                                                                    
END
let g:dashboard_default_executive ='telescope'

nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
