vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.ruler = true
vim.keymap.set('n', '<c-f>', ':NvimTreeFindFileToggle<CR>')

vim.cmd([[
set hidden
set confirm
set clipboard+=unnamedplus
let NERDTreeQuitOnOpen=1

" navigate easy between panes
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" transfer copied to system clipboard
map "+p :r!xsel -o -sel clip
vmap "+y :w !xsel -i --clipboard<CR><CR>
nnoremap "+p :read !xsel -o --clipboard<CR>


" Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir
" Case insensitive search for lowercase query
set ignorecase
" Case sensitive search for queries with caps
set smartcase
" Display trailing whitespaces as • and tab as →•
set list listchars=trail:•,tab:→•

map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

nmap <Leader>d :bdelete<CR>

" Shortcuts for switching the buffers
map <C-N> :bnext<CR>
map <C-P> :bprev<CR>
imap <C-N> <Esc>:bnext<CR>i
imap <C-P> <Esc>:bprev<CR>i
" save with ctrl + s
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Write with sudo
command Sudow w !sudo tee %

" Remap splits to SPC+[-,\]
nnoremap <leader>- <C-w>s
nnoremap <leader>_ <C-w>v

" Tab navigation via leader+number
" https://vim.fandom.com/wiki/Alternative_tab_navigation
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

" Tab navigation with t prefix
" https://vim.fandom.com/wiki/Alternative_tab_navigation
nnoremap th :tabprev<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tabnext<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

]])


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>q', ':nohlsearch<CR>')
