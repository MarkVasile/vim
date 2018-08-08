let g:deoplete#auto_complete_delay = 150
let g:neomake_vim_enabled_makers = []

set tabstop=2
set softtabstop=2
set shiftwidth=2
set history=1000
set listchars+=eol:$

:autocmd BufNewFile,BufRead * :set listchars+=eol:$

" let g:vue_disable_pre_processors = 1
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
let g:neomake_javascript_enabled_makers = ['eslint']
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:ale_linters = { 'javascript': ['eslint'] }

set hidden
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls'],
    \ 'html': [],
    \ 'css': [],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nnoremap <silent> <Leader>fs :GFiles<cr>
nnoremap <silent> <Leader>ff :FZF<cr>

func! s:transparent_background()
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    hi LineNr ctermbg=NONE guibg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
endf
autocmd ColorScheme * call s:transparent_background()
call s:transparent_background()
