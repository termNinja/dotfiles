" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"                                               /   \
"              _                        )      ((   ))     (
"             (@)                      /|\      ))_((     /|\
"             |-|                     / | \    (/\|/\)   / | \                      (@)
"             | | -------------------/--|-voV---\`|'/--Vov-|--\---------------------|-|
"             |-|                         '^`   (o o)  '^`                          | |
"             | |                               `\Y/'                               |-|
"             |-|                                                                   | |
"             | |                   2017 termninja github.com/termninja             |-|
"             |-|                                                                   | |
"             | |                                                                   |-|
"             |_|___________________________________________________________________| |
"             (@)                 l   /\ /      ( (       \ /\   l                `\|-|
"                                 l /   V        \ \       V   \ l                  (@)
"                                 l/             _) )_          \I
"                                                `\ /'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
let g:username = "Nemanja Micovic"              " whoami?
let g:email = "nmicovic@outlook.com"            " howtogetme?

let mapleader="\<Space>"                        " set the leading dragon!
set shell=bash                                  " avoid problems if using fish shell

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Vundle init (my plugin manager)
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set nocompatible                            " be iMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"                                       *-*-*-*-*-*-*-*-*
"                                       *-PLUGINS START-*
"                                       *-*-*-*-*-*-*-*-*
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" YouCompleteMe (with relevant tweaks)
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'Valloric/YouCompleteMe'             " you complete me baby
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<Down>','<c-k>']
let g:ycm_key_list_previous_completion = ['<Up>','<c-j>']

" Show full log paths
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_keep_logfiles = 0

" Force YCM/Clang to recompile the project
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" Make YCM autoclose the preview window
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Make YCM not ask before loading ycm_conf
let g:ycm_confirm_extra_conf = 0

" Turn off annoying autcomplete window
let g:ycm_add_preview_to_completeopt = 0

" Make YCM populare location list with compilation data
let g:ycm_always_populate_location_list = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
nnoremap <C-]> <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>|
inoremap <C-]> <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <Leader>f <Esc>:YcmCompleter FixIt<CR>


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Autocomplete and similar features
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"Plugin 'tkztmk/vim-vala'
Plugin 'jvirtanen/vim-octave'               " octave syntax highlight
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'm2mdas/phpcomplete-extended-laravel'
Plugin 'jwalton512/vim-blade'
" Plugin 'ternjs/tern_for_vim'              " tern complete for javascript (I use YCM)
" Plugin 'scrooloose/syntastic'             " Syntastic syntax checker
"Plugin 'vim-scripts/ccimpl.vim'             " generate cpp implementation from header

" Enables to generated c and c++ function implementations
Plugin 'derekwyatt/vim-fswitch'             " switches between source/header
Plugin 'derekwyatt/vim-protodef'            " generates cpp definitions

"Plugin 'python-mode/python-mode'            " full Python development plugin
Plugin 'vim-scripts/indentpython.vim'       " help with python indenting

" Markdown
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"set conceallevel=2

Plugin 'christoomey/vim-tmux-navigator'     " tmux-navigator
Plugin 'benmills/vimux'                     " interact with tmux
"Plugin 'blueyed/vim-diminactive'            " dim inactive window
Plugin 'vim-scripts/CursorLineCurrentWindow'

Plugin 'artur-shaik/vim-javacomplete2'

Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'

" Use completephp plugin for PHP autocomplete
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Visual - colorschemes
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'flazz/vim-colorschemes'             " lots of colorschemes
Plugin 'chriskempson/base16-vim'            " Lots of base16 themes
Plugin 'justinmk/vim-syntax-extra'          " Support for bison, flex and c
Plugin 'w0ng/vim-hybrid'                    " Hybrid theme
Plugin 'colepeters/spacemacs-theme.vim'     " dark theme
Plugin 'tyrannicaltoucan/vim-deep-space'    " dark theme
"Plugin 'mkarmona/colorsbox'
Plugin 'sosz/vim-darcula-theme'             " jetbrains dark theme
Plugin 'liuchengxu/space-vim-dark'          " spacemacs theme
Plugin 'KeitaNakamura/neodark.vim'          " onedark inspired dark theme
Plugin 'jdkanani/vim-material-theme'        " material style onedark inspired theme
Plugin 'sonph/onehalf'                      " onedark clone
Plugin 'jacoborus/tender.vim'               " cool dark theme
Plugin 'nightsense/nemo'
Plugin 'yuttie/hydrangea-vim'
Plugin 'hzchirs/vim-material'

" New
Plugin 'exitface/synthwave.vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'nightsense/carbonized'


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Visual - other
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"Plugin 'vim-scripts/CSApprox'               " convert theme to terminal colors
Plugin 'octol/vim-cpp-enhanced-highlight'   " better synt.col.supp for cpp
Plugin 'OrangeT/vim-csharp'
Plugin 'mhinz/vim-startify'                 " fancy startscreen for vim
Plugin 'hdima/python-syntax'                " better synt.col.supp. for py
Plugin 'vim-airline/vim-airline'            " vim airline statusbar
Plugin 'vim-airline/vim-airline-themes'     " themes for airline
Plugin 'airblade/vim-gitgutter'             " git indicator about file changes
" Plugin 'miyakogi/conoline.vim'            " smart highlight of current line
Plugin 'Valloric/MatchTagAlways'            " visual match html tags
Plugin 'myusuf3/numbers.vim'                " intelligent toggle of line numbers

Plugin 'ap/vim-css-color'                   " show colors while editing css files
Plugin 'othree/html5.vim'
Plugin 'nathanaelkane/vim-indent-guides'    " show indent lines

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Additional plugins
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'aperezdc/vim-template'              " File templates
Plugin 'rdnetto/YCM-Generator'              " YCM flag generator
" Plugin 'easymotion/vim-easymotion'            " easymotion <3
Plugin 'scrooloose/nerdtree'                " Nerdtree file browser
Plugin 'scrooloose/nerdcommenter'           " Commenting engine
Plugin 'shime/vim-livedown'                 " md preview, invoke with :LivedownPreview
Plugin 'Shougo/vimproc'                     " asynchronous library (used by other plugins)
" Plugin 'Shougo/unite.vim'
Plugin 'ctrlpvim/ctrlp.vim'                 " fuzzy search inspired by sublime
Plugin 'terryma/vim-multiple-cursors'       " multiple cursors like Sublime Editor
Plugin 'reedes/vim-wordy'                   " check words in dictionary
Plugin 'jiangmiao/auto-pairs'               " smart brackets
Plugin 'alvan/vim-closetag'                 " autoclose html tags
"Plugin 'lervag/vimtex'                      " vimtex plugin to extend Latex support

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Code snippets with relevant configurations
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'                  " handles conflicts betweens snippets and YCM

" Trigger configuration. Do not use <tab> if you use 'Valloric/YouCompleteMe'.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call vundle#end()            " required
filetype plugin indent on    " required
"                                       *-*-*-*-*-*-*-*
"                                       *-PLUGINS END-*
"                                       *-*-*-*-*-*-*-*
"
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" My configz
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" good themes: base16-atelierdune base16-atelierforest, badwolf, base16-summerfruit, hybrid, onedark
"set t_Co=256                                " sets 256 colors onto term
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors

set background=dark
"let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

colorscheme onedark
"colorscheme hydrangea
"colorscheme materialtheme
"colorscheme hybrid_reverse
"colorscheme space-vim-dark
"colorscheme deep-space
"colorscheme quantum
"colorscheme base16-materia
"colorscheme neodark
let g:neodark#background='gray' " black, gray or brown
"let g:neodark#solid_vertsplit = 1 " default: 0

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

"if (has("termguicolors"))
" set termguicolors
"endif

let g:airline_theme="behelit"               " tomorrow is awesome :D
syntax on                                   " give us some syntax highlighting!
filetype on
filetype plugin on
set number                                  " show line numbers
"set relativenumber
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

" indenting
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set cindent
set cinoptions+=g0                          " don't indent cpp visibility specifiers
set autoindent
set tabstop=4

" Hadling line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <C-l> :call NumberToggle()<cr>

"set colorcolumn=110
"highlight ColorColumn ctermbg=darkgray

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Abbrevs
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
iab reurn return
iab retrn return
iab reutrn return
iab inclue include
iab :; ::
iab fancycpp // =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

"au FileType cpp ia cin std::cin
"au FileType cpp ia cout std::cout
"au FileType cpp ia cerr std::cerr
"au FileType cpp ia endl std::endl

" make vim remember last cursor position when editing file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" GUI specific settings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if has('gui_running')
    set autochdir
    set guifont=xos4\ Terminess\ Powerline\ 12
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
    colorscheme onedark
endif

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Default settings for syntastic
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Additional plugin settings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

" -------------------------------------------------------------------------------------------------
" fuzzy search plugin additional settings
" -------------------------------------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*.o,*.obj,build,build-*,.*.swp,.*.swo
set wildignore+=*.pyc,*.class,*.jar,*~
set wildignore+=.git,.svn
set wildignore+=project/target/**,target/**
set wildignore+=GPATH,GRTAGS,GSYMS,GTAGS
set wildignore+=*/tmp/*,*.so,*.swp,*.zip        " files to be ignored when searching

" -------------------------------------------------------------------------------------------------
" Easymotion settings
" -------------------------------------------------------------------------------------------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" -------------------------------------------------------------------------------------------------
" Nerdtree settings
" -------------------------------------------------------------------------------------------------
" Make nerdtree start if no file was specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
" close nerdtree if it's the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -------------------------------------------------------------------------------------------------
" make YCM comptaible with ultisnips with supertabs
" -------------------------------------------------------------------------------------------------
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-n>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better keybinding for ultisnips expand trigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" autoenable conoline (cursor)
let g:conoline_auto_enable = 1

let g:conoline_use_colorscheme_default_normal=1

"let g:syntastic_python_python_exec = '/usr/bin/python2'

" -------------------------------------------------------------------------------------------------
" CTRL+P fuzzy search
" -------------------------------------------------------------------------------------------------
let g:ctrlp_working_path_mode = 'wr'

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
" Python settings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Let there be pep8!
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix


" Show bad whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufRead,BufNewFile *.thy setfiletype isabelle
au BufRead,BufNewFile *.thy set conceallevel=2


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Custom binds
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
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

" indent config
let g:indent_guides_guide_size = 1              " make indent lines thinner
let g:indent_guides_enable_on_vim_startup = 1   " run indents on startup


" ---------------------------------------------------
" VIMUX plugin
" ---------------------------------------------------
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

" ---------------------------------------------------
" JAVA autocompleter
" ---------------------------------------------------
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" ---------------------------------------------------
" Tmux navigator
" ---------------------------------------------------
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" Livedown config
let g:livedown_browser = "chromium"

" folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
set foldmethod=manual

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

" Switch between light and dark background
map <F10> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

" goodbye trailling whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" goodbye CR from Windows
nnoremap <silent> <F6> :%s/\r//g<CR>

" reloading vimrc
nnoremap <Leader>rc :source ~/.vimrc<CR>

" This allows vim to jump from header/definiton into defintion/header
" (TODO: Find a suitable plugin for this maybe?)
"map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
map <F4> :FSHere<CR>
map <Leader><F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

nmap <F8> :TagbarToggle<CR>

"nnoremap <silent> <Leader><Up> :exe "resize " . (winheight(0) * 6/5)<CR>
"nnoremap <silent> <Leader><Down> :exe "resize " . (winheight(0) * 5/6)<CR>
"nnoremap <silent> <Leader><Left> :exe "vertical resize " . (winheight(0) * 6/5)<CR>
"nnoremap <silent> <Leader><Right> :exe "vertical resize " . (winheight(0) * 5/6)<CR>
noremap <M-left> :vertical resize -3<cr>
nnoremap <M-down> :resize +3<cr>
nnoremap <M-up> :resize -3<cr>
nnoremap <M-right> :vertical resize +3<cr>

set pastetoggle=<F2>

" turn off highlight for search results
map <Leader>hl :nohlsearch<CR>

" toggle file browser
map <Leader>n :NERDTreeToggle<CR>


" Compiling, checking errors etc.
nnoremap <Leader>c :! make clean<CR>
nnoremap <Leader>e :copen<CR>
"map <Leader>x :clo<CR>
"nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cp<CR>


