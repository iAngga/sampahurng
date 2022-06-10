" plugs
call plug#begin ()
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
	Plug 'ap/vim-css-color'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'plasticboy/vim-markdown'
  Plug 'junegunn/goyo.vim'
call plug#end () 

" stuff
set number
set relativenumber
set mouse=a 
set clipboard=unnamedplus
set title
set hidden

filetype plugin indent on
syntax on

set t_Co=256

" netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_keepdir=0
let g:netrw_winsize=25
nnoremap - :Explore<CR>

" awikwok arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" airline
let g:airline_theme='minimalist'

" coc 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_conceal=0
