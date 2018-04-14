" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"                                               /   \
"              _                        )      ((   ))     (
"             (@)                      /|\      ))_((     /|\
"             |-|                     / | \    (/\|/\)   / | \                      (@)
"             | | -------------------/--|-voV---\`|'/--Vov-|--\---------------------|-|
"             |-|                         '^`   (o o)  '^`                          | |
"             | |                               `\Y/'                               |-|
"             |-|                                                                   | |
"             | |                   2018 termninja github.com/termninja             |-|
"             |-|                                                                   | |
"             | |                                                                   |-|
"             |_|___________________________________________________________________| |
"             (@)                 l   /\ /      ( (       \ /\   l                `\|-|
"                                 l /   V        \ \       V   \ l                  (@)
"                                 l/             _) )_          \I
"                                                `\ /'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
let g:username = "termninja"                    " whoami?
let g:email = "nmicovic@outlook.com"            " howtogetme?

let mapleader="\<Space>"                        " set the leading dragon!
set shell=bash                                  " avoid problems if using fish shell
" ---------------------------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'

Plug 'ervandew/supertab'                  " handles conflicts betweens snippets and YCM
"Plug 'zchee/deoplete-clang'
"Plug 'tweekmonster/deoplete-clang2'
"Plug 'Shougo/neoinclude.vim'
"Plug 'xaizek/vim-inccomplete'               " completer for include path in c,cpp
"Plug 'eagletmt/neco-ghc'
"Plug 'padawan-php/deoplete-padawan'

"Plug 'zchee/deoplete-jedi'
Plug 'airblade/vim-gitgutter'             " git indicator about file changes
Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-fswitch'             " switches between source/header
Plug 'derekwyatt/vim-protodef'            " generates cpp definitions

Plug 'octol/vim-cpp-enhanced-highlight'   " better synt.col.supp for cpp
Plug 'OrangeT/vim-csharp'
Plug 'mhinz/vim-startify'                 " fancy startscreen for vim
Plug 'myusuf3/numbers.vim'                " intelligent toggle of line numbers

Plug 'aperezdc/vim-template'              " File templates
Plug 'rdnetto/YCM-Generator'              " YCM flag generator
Plug 'scrooloose/nerdtree'                " Nerdtree file browser
Plug 'scrooloose/nerdcommenter'           " Commenting engine
Plug 'shime/vim-livedown'                 " md preview, invoke with :LivedownPreview
Plug 'terryma/vim-multiple-cursors'       " multiple cursors like Sublime Editor
Plug 'jiangmiao/auto-pairs'               " smart brackets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'OrangeT/vim-csharp'

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Themes
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'            " vim airline statusbar
Plug 'vim-airline/vim-airline-themes'     " themes for airline
Plug 'yuttie/hydrangea-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'Badacadabra/vim-archery'

call plug#end()
" ---------------------------------------------------------------------------
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors

" ===========================================================================
" Plugin config
" ===========================================================================
"let g:airline_theme="behelit"               " tomorrow is awesome :D
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_refresh_always = 1

let g:ale_lint_on_text_changed = 'never'        " run ale only when we save the file
let g:ale_lint_on_enter = 0                     " don't run linter when file is opened

"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/5.0.1/include'
 "let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

" Used to handle conflicts between snippets and YCM
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-n>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" -------------------------------------------------------------------------------------------------
" Settings for cpp syntax highlgher
" -------------------------------------------------------------------------------------------------
let g:cpp_class_scope_highlight = 1             " enable class scope highlighting
let g:cpp_experimental_template_highlight = 1   " enable template highlight

" -------------------------------------------------------------------------------------------------
" Settings for python syntax highlighter
" -------------------------------------------------------------------------------------------------
let g:python_version_2 = 1
let g:python_highlight_all = 1
let g:airline_powerline_fonts = 1

" -------------------------------------------------------------------------------------------------
" Settings for the vim airline
" -------------------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
set ttimeoutlen=50                          " faster switch from insert to user defined completion

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Custom binds
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if has('gui_running')
    set autochdir
    set guifont=xos4\ Terminess\ Powerline\ 12
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
    colorscheme onedark
endif

" useful binds for switching tabs
map  <C-Tab>     <Esc>:tabnext<CR>
imap <C-Tab>     <Esc>:tabnext<CR>
map  <S-C-Tab>   <Esc>:tabprev<CR>
imap <S-C-Tab>   <Esc>:tabprev<CR>
map  <S-Right>   <Esc>:tabnext<CR>
imap <S-Right>   <Esc>:tabnext<CR>
map  <S-Left>    <Esc>:tabprev<CR>
imap <S-Left>    <Esc>:tabprev<CR>

" Moving between VIM windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
nnoremap <silent> vh :split<cr>

" Map Ctrl-Backspace to delete the previous word in insert mode.
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db

" additional binds for saving, quiting...
nnoremap <Leader>s    <Esc>:wa<CR>|             "" Save everything
inoremap <S-Leader>s  <Esc>:wa<CR>
nnoremap <S-Leader>s  <Esc>:wa<CR>

nnoremap <Leader>q    <Esc>:q<CR>|              "" Quit vim
inoremap <S-Leader>q  <Esc>:q<CR>
nnoremap <S-Leader>q  <Esc>:q<CR>

nnoremap <Leader>x    <Esc>:x<CR>|              "" Save and quit vim
inoremap <S-Leader>x  <Esc>:x<CR>
nnoremap <S-Leader>x  <Esc>:x<CR>

" kill trailling whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" kill CR from Windows
nnoremap <silent> <F6> :%s/\r//g<CR>

" reloading vimrc
nnoremap <Leader>rc :source ~/.config/nvim/init.vim<CR>

" Used for switching between header and definition files.
map <F4> :FSHere<CR>
map <Leader><F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

set pastetoggle=<F2>

" turn off highlight for search results
map <Leader>hl :nohlsearch<CR>

" toggle file browser
map <Leader>n :NERDTreeToggle<CR>

" exec terminal inside current buffer
map <Leader>t :terminal fish<CR>a<CR>

" Resizing windows
noremap <M-left> :vertical resize -3<cr>
nnoremap <M-down> :resize +3<cr>
nnoremap <M-up> :resize -3<cr>
nnoremap <M-right> :vertical resize +3<cr>

" indent config
let g:indent_guides_guide_size = 1              " make indent lines thinner
let g:indent_guides_enable_on_vim_startup = 1   " run indents on startup

" -------------------------------------------------------------------------------------------------
" Editing experience
" -------------------------------------------------------------------------------------------------
colorscheme archery
"colorscheme onedark
set number
syntax on                                   " give us some syntax highlighting!
filetype on
filetype plugin on
set number                                  " show line numbers
set hlsearch                                " highligh search results
set incsearch                               " shows results as you type the search
set laststatus=2
"set undofile                                " make undo files
set backspace=indent,eol,start
set cursorline
"set nocursorline
set scrolloff=6                             " Always show a few lines below and above the current one
set wildmenu                                " Tab completion for the commands
set completeopt=menu                        " Completions in menus
set nowrap                                  " Never wrap the text
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set cindent
set cinoptions+=g0                          " don't indent cpp visibility specifiers
set autoindent
set tabstop=4

" folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
set foldmethod=manual

" leave terminal mode by esc
:tnoremap <Esc> <C-\><C-n>


" make vim remember last cursor position when editing file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
