" General python configuruation
" Python syntax on
let python_highlight_all=1

" ALE configuration
let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8','remove_trailing_lines','isort']
let b:ale_python_flake8_executable = 'python3'
let b:ale_fix_on_save = 1
let b:ale_lint_on_save = 1

" Pydocstring configuration
let g:pydocstring_doq_path='doq'
let g:pydocstring_formatter='google'

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" Remap space
nnoremap <space> za
vnoremap <space> zf

"PEP8 indentation for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
