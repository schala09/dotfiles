set nocompatible
filetype plugin indent on
syntax on

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

set background=dark
colorscheme solarized

set guioptions-=m
set guioptions-=T
set guioptions-=r

let &colorcolumn=join(map(range(1,999), '"+" . v:val'), ',')

set ignorecase
set smartcase
set hls
set expandtab
set nojoinspaces
set tabstop=2
set shiftwidth=2
set viminfo='10,\"100,:20,%,n~/.viminfo
set pastetoggle=<F12>
set autochdir
set matchpairs+=<:>
set formatoptions-=t
call togglebg#map("<F5>")

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
