call plug#begin('~/.vim/plugged')

Plug 'https://github.com/joshdick/onedark.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'HerringtonDarkholme/yats.vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/tpope/vim-fugitive'

Plug 'preservim/nerdcommenter'

call plug#end()

" ===========
" Theme
" ===========

syntax on
colorscheme onedark

" ============
" Coc
" ============

let g:coc_global_extensions=['coc-css', 'coc-json', 'coc-html', 'coc-tsserver']

" c-@ means c-space
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ===========
" Netrw
" ===========

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_altv = 1


" ===========
" Nerd commenter
" ===========

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

" ==========
" Other
" =========

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set listchars=space:·
set list

set noswapfile

