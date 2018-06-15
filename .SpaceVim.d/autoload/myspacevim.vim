let g:deoplete#auto_complete_delay = 150
let g:neomake_vim_enabled_makers = []

set tabstop=2
set softtabstop=2
set shiftwidth=2
set history=1000
set listchars+=eol:$

let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
let g:neomake_javascript_enabled_makers = ['eslint']
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

nnoremap <silent> <Leader>fs :GFiles<cr>
