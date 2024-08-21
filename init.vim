set fileformat=unix
set fileformats=unix,dos
set tabstop=4 shiftwidth=4 expandtab
set number
syntax on
set noswapfile
" autocmd VimEnter * NERDTree

call plug#begin()

Plug 'gleam-lang/gleam.vim'
Plug 'vimcolorschemes/vimcolorschemes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'psf/black'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'typescriptreact', 'javascriptreact'] }
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot' "a super language pack for a ton of stuff
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
nnoremap gp :silent %!prettier --stdin-filepath %<CR>

nnoremap <C-h> :tabprev<cr>
nnoremap <C-l> :tabnext<cr>
nnoremap <C-S-k> :tabnew<cr>
nnoremap <C-S-j> :tabclose<cr>

colorscheme NQ_rgbpoolx

autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
autocmd BufWritePre *.py execute ':Black'

nnoremap <m-f> :FZF<cr>
nnoremap <s-t> :terminal<cr>
tnoremap <Esc> <C-\><C-n>
