"/
" ------------------------------------------------
"/ NERDCommenter [Comment faster]
" ------------------------------------------------
"/

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


"/
" ------------------------------------------------
"/ UltiSnips
" ------------------------------------------------
"/
"" make YCM compatible with UltiSnips (using supertab)
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets="<c-l>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


"/
" ------------------------------------------------
"/ quick-scope
" ------------------------------------------------
"/

" let g:qs_enable=0 " Disable by default
" Toggle Enable
" nmap <leader>q <plug>(QuickScopeToggle)
" xmap <leader>q <plug>(QuickScopeToggle)

" let g:qs_lazy_highlight = 1

" Highlight on key press
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" let g:qs_max_chars=80 " Disable on long lines


"/
" ------------------------------------------------
"/ NERDTree
" ------------------------------------------------
"/
"
" Disabled - using vineger now: keymap is dash -
noremap <leader>nt         :NERDTreeToggle<cr>
noremap <leader>nf         :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.pyc$', '__pycache__']


"/
" ------------------------------------------------
"/ Ale
" ------------------------------------------------
"/
"
"
" Run :ALEFix for mor INFO on Linters, Fixers, etc.

" Python linters: pyflakes, pylint, flake8
" Type hint checker: mypy
"
" PHP linters: phpcs, php
" PHP fixers: phpcsf, php_cs_fixer
"
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_delay = 2000

let g:ale_fixers =  {'*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python': ['black', 'isort'],
            \ 'html': ['prettier'],
            \ 'css': ['prettier'],
            \ 'javascript': ['prettier'],
            \ 'vue': ['prettier'],
            \ 'php': ['php_cs_fixer'],
            \ 'yaml': ['yamlfix'],
            \}

let g:ale_linters = {
            \ 'python': ['flake8', 'mypy'],
            \ 'php': ['php', 'phpcs'],
            \ 'js': ['eslint']}


let g:ale_php_phpcs_options = '--standard PSR12'

let g:ale_python_flake8_options = '--max-line-length=88' " --ignore=E203, W503
" isort now is being configured using setup.cfg
" let g:ale_python_isort_options = '--profile=black --multi-line=3'
let g:ale_python_mypy_options = '--ignore-missing-imports'

" Next, Previous Error
noremap <silent> <leader><C-j> :ALENext<cr>
noremap <silent> <leader><C-k> :ALEPrevious<cr>

nnoremap <F2> :ALEFix<CR>
nnoremap <F3> :ALEToggle<CR>


"/
" ------------------------------------------------
"/ Hexokinase
" ------------------------------------------------
"/
"
" Other options:
" virtual (neovim only), sign_column,
" background, foreground, backgroundfull, foregroundfull
let g:Hexokinase_highlighters = ['foreground']
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }
nnoremap <leader>H :HexokinaseToggle<CR>


"/
" ------------------------------------------------
"/ DelimitMate
" ------------------------------------------------
"/
" All mappings are defaults, I've put them here as
" a reference and to overwrite UltiSnips mappings.
imap <S-TAB> <Plug>delimitMateS-Tab
" imap <C-G>g <Plug>delimitMateJumpMany

" Remove both segments when cursor is in between
" Ex: (|) when cursor is on |, backspace removes both perentesis
"
" imap <BS> <Plug>delimitMateBS
" imap <S-BS> <Plug>delimitMateS-BS
"


"/
" ------------------------------------------------
"/ vim-surround
" ------------------------------------------------
"/
nmap <F4>   ysiw

