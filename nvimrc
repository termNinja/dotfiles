" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"                                               /   \
"              _                        )      ((   ))     (
"             (@)                      /|\      ))_((     /|\
"             |-|                     / | \    (/\|/\)   / | \                      (@)
"             | | -------------------/--|-voV---\`|'/--Vov-|--\---------------------|-|
"             |-|                         '^`   (o o)  '^`                          | |
"             | |                               `\Y/'                               |-|
"             |-|                                                                   | |
"             | |                   2021 termninja github.com/termninja             |-|
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
Plug 'w0rp/ale'
"Plug 'ervandew/supertab'                    " handles conflicts betweens snippets and YCM
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'               " git indicator about file changes
Plug 'derekwyatt/vim-fswitch'               " switches between source/header
Plug 'derekwyatt/vim-protodef'              " generates cpp definitions
Plug 'octol/vim-cpp-enhanced-highlight'     " better synt.col.supp for cpp

Plug 'OrangeT/vim-csharp'
Plug 'mhinz/vim-startify'                   " fancy startscreen for vim
Plug 'myusuf3/numbers.vim'                  " intelligent toggle of line numbers

Plug 'aperezdc/vim-template'                " File templates
Plug 'scrooloose/nerdtree'                  " Nerdtree file browser
Plug 'scrooloose/nerdcommenter'             " Commenting engine
Plug 'terryma/vim-multiple-cursors'         " multiple cursors like Sublime Editor
Plug 'jiangmiao/auto-pairs'                 " smart brackets

Plug 'skywind3000/asyncrun.vim'             " run async commands

Plug 'lilydjwg/colorizer'                   " show color hexa colors
Plug 'luochen1990/rainbow'                  " colorize matching brackets
Plug 'RRethy/vim-illuminate'                " highlight all appearances of the current word
Plug 'inside/vim-search-pulse'              " pulse during search results
Plug 'blueyed/vim-diminactive'              " dim inactive windows
Plug 'cloudhead/neovim-fuzzy'               " fuzzy finder
'

" Markdown <3
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'godlygeek/tabular'                    " tabular plugin is used to format tables
Plug 'elzr/vim-json'                        " JSON front matter highlight plugin
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'ajorgensen/vim-markdown-toc'

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Themes
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'            " vim airline statusbar
Plug 'vim-airline/vim-airline-themes'     " themes for airline
Plug 'yuttie/hydrangea-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'exitface/synthwave.vim'

call plug#end()
" ---------------------------------------------------------------------------
" Better color support for terminal vim
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors

" ===========================================================================
" Plugin config
" ===========================================================================
"let g:airline_theme="behelit"               " tomorrow is awesome :D
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1

let g:ale_lint_on_text_changed = 'never'        " run ale only when we save the file
let g:ale_lint_on_enter = 0                     " don't run linter when file is opened

" Deoplete (deprecated)
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
" YCM (deprecated)
" -------------------------------------------------------------------------------------------------
"let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/ycm_extra_conf.py"

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
let g:airline_theme="synthwave"
set ttimeoutlen=50                          " faster switch from insert to user defined completion

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Custom binds
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if has('gui_running')
    set autochdir
    set guifont=xos4\ Terminess\ Powerline\ 12
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"

    set mouse=a
    " Paste with middle mouse click
    vmap <LeftRelease> "*ygv

    " Paste with <Shift> + <Insert>
    imap <S-Insert> <C-R>*
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

" deleting word with ctrl + backspace
"imap <C-BS> <C-W>
"noremap! <C-BS> <C-w>
"noremap! <C-h> <C-w>

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
"nnoremap <Leader>rc :source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>rc :source ~/.var/app/io.neovim.nvim/config/nvim/init.vim<CR>
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
map <Leader>t :terminal <CR>a<CR>

" fuzzy finding on Ctrl + P
nnoremap <C-p> :FuzzyOpen<CR>

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
"colorscheme zellner
"colorscheme spacevim-theme
"colorscheme space-vim-dark
colorscheme onedark
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

noremap <F7> :AsyncRun make<cr> 

" Enable rainbow on startup
let g:rainbow_active = 1

" Highlight all occurecnes of the current highlighter word
hi link illuminatedWord Visual

" Make the pulse animation for search higlight last 400ms
let g:vim_search_pulse_duration = 400


" -----------------------------------------------------------------------------------
" Markdown plugin settings
" -----------------------------------------------------------------------------------
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

set updatetime=100

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" -----------------------------------------------------------------------------------
" Additional config for vim-markdown
" -----------------------------------------------------------------------------------
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" Set .ypp extension for yacc
autocmd BufRead,BufNewFile *.ypp set filetype=yacc

let g:coc_node_path = "/usr/bin/node"

" The NVim CoC configuration
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" -----------------------------------------------------------------------------
" Config for MD live preview
" -----------------------------------------------------------------------------
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" Making active pane more obvious
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END
