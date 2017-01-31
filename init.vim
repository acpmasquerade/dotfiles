" Leader
let mapleader=','
:set autoread

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction


call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'kshenoy/vim-signature'

" sudo apt install exuberant-ctags
Plug 'majutsushi/tagbar'

call plug#end()


" Color scheme
syntax enable
colorscheme default
set background=dark
nmap <leader>tb :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Deoplete.
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = "${HOME}/.pyenv/versions/neovim2/bin/python"
let g:python3_host_prog = "${HOME}/.pyenv/versions/neovim3/bin/python"
" Relative file path autocomplete
let g:deoplete#file#enable_buffer_path = 1

" NERDTree
nmap tb :NERDTreeToggle<CR>

" Tagbar
nmap tt :TagbarToggle<CR>

" Ctrlp
let g:ctrlp_working_path_mode = 'ra'
nmap gf :CtrlP<CR>
nmap gr :CtrlPBuffer<CR>
let g:ctrlp_root_markers = ['.brofile']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules$',
  \ 'file': '',
  \ 'link': '',
  \ }

" Escape
:imap jk <Esc>

" Code folding options
set foldmethod=indent

nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" Window
map <C-J> <C-W><DOWN>
map <C-H> <C-W><LEFT>
map <C-K> <C-W><UP>
map <C-L> <C-W><RIGHT>

" Clear search highlight
nmap ,ch :set hlsearch!<CR>

" split side
set splitright
set splitbelow

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Easy-motion
map  <Space> <Plug>(easymotion-bd-f)
nmap <Space> <Plug>(easymotion-overwin-f)

map <Space>l <Plug>(easymotion-bd-jk)
nmap <Space>l <Plug>(easymotion-overwin-line)

map  <Space>w <Plug>(easymotion-bd-w)
nmap <Space>w <Plug>(easymotion-overwin-w)

" Indent guides
" let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1

" Syntastic
let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_javascript_checkers = ['eslint']
"

"set -g mouse on
"bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
"bind -n WheelDownPane select-pane -t= \; send-keys -M
"set-window-option -g mode-keys vi
"bind-key -t vi-copy 'y' copy-pipe "xclip -i -sel p -f | xclip -i -sel c "
"
