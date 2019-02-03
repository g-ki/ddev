let g:onedark_termcolors=16


let g:better_whitespace_filetypes_blacklist=[
\ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'nerdtree'
\ ]
autocmd BufWritePre * StripWhitespace


let g:ale_enable=1
let g:ale_linters={
\ 'javascript': ['eslint'],
\ 'python': ['flake8'],
\ }

let g:ale_linter_aliases={
\ 'javascript': ['javascript', 'javascript.jsx', 'jsx'],
\ }

let g:ale_lint_on_text_changed='normal'


set t_Co=256
set t_ut=
silent! colorscheme onedark