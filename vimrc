" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" 		 	                                    /   \
" 		 	   _                        )      ((   ))     (
" 		 	  (@)                      /|\      ))_((     /|\
" 		 	  |-|                     / | \    (/\|/\)   / | \                      (@)
" 		 	  | | -------------------/--|-voV---\`|'/--Vov-|--\---------------------|-|
" 		 	  |-|                         '^`   (o o)  '^`                          | |
" 		 	  | |                               `\Y/'                               |-|
" 		 	  |-|                                                                   | |
" 		 	  | | 					2016 termninja github.com/termninja             |-|
" 		 	  |-|                                                                   | |
" 		 	  | |                                                                   |-|
" 		 	  |_|___________________________________________________________________| |
" 		 	  (@)                 l   /\ /      ( (       \ /\   l                `\|-|
" 		 	                      l /   V        \ \       V   \ l                  (@)
" 		 	                      l/             _) )_          \I
" 		 	                                     `\ /'
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
let g:username = "termninja" 				" whoami?
let g:email = "your@email.goes.here" 		" howtogetme?

let mapleader="\<Space>" 					" set the leading dragon!
set shell=bash 								" avoid problems if using fish shell

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Vundle init (my plugin manager)
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set nocompatible              				" be iMproved
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 										*-*-*-*-*-*-*-*-*
" 										*-PLUGINS START-*
" 										*-*-*-*-*-*-*-*-*
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" YouCompleteMe (with relevant tweaks)
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'Valloric/YouCompleteMe'				" you complete me baby
let g:ycm_key_list_select_completion = ['<Down>','<c-k>']
let g:ycm_key_list_previous_completion = ['<Up>','<c-j>']

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

" ---------------------------------------------------------------------------------------
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Autocomplete and similar features
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" ---------------------------------------------------------------------------------------
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'm2mdas/phpcomplete-extended-laravel'
Plugin 'jwalton512/vim-blade'
" Plugin 'ternjs/tern_for_vim'				" tern complete for javascript (I use YCM)
" Plugin 'scrooloose/syntastic'				" Syntastic syntax checker

" Use completephp plugin for PHP autocomplete
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP


" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Visual
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'flazz/vim-colorschemes'				" lots of colorschemes
Plugin 'chriskempson/base16-vim' 			" Lots of base16 themes
Plugin 'justinmk/vim-syntax-extra' 			" Support for bison, flex and c
Plugin 'w0ng/vim-hybrid' 					" Hybrid theme
Plugin 'octol/vim-cpp-enhanced-highlight' 	" better synt.col.supp for cpp
Plugin 'tyrannicaltoucan/vim-deep-space' 	" dark theme
Plugin 'vim-airline/vim-airline'			" vim airline statusbar
Plugin 'vim-airline/vim-airline-themes'		" themes for airline
Plugin 'airblade/vim-gitgutter' 			" git indicator about file changes
Plugin 'hdima/python-syntax' 				" better synt.col.supp. for py
Plugin 'vim-scripts/CSApprox' 				" convert theme to terminal colors
Plugin 'mhinz/vim-startify' 				" fancy startscreen for vim
" Plugin 'miyakogi/conoline.vim' 			" (not so) smart highlight of current line

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Additional plugins
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'aperezdc/vim-template' 				" File templates
Plugin 'rdnetto/YCM-Generator'				" YCM flag generator
" Plugin 'easymotion/vim-easymotion'			" easymotion <3
Plugin 'scrooloose/nerdtree'				" Nerdtree file browser
Plugin 'scrooloose/nerdcommenter'			" Commenting engine
Plugin 'shime/vim-livedown'					" md preview, invoke with :LivedownPreview
Plugin 'Shougo/vimproc' 					" asynchronous library (used by other plugins)
" Plugin 'Shougo/unite.vim'
Plugin 'ctrlpvim/ctrlp.vim' 				" fuzzy search inspired by sublime
Plugin 'terryma/vim-multiple-cursors' 		" multiple cursors like Sublime Editor
Plugin 'reedes/vim-wordy' 					" check words in dictionary

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Code snippets with relevant configurations
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab' 					" handles conflicts betweens snippets and YCM

" Trigger configuration. Do not use <tab> if you use 'Valloric/YouCompleteMe'.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call vundle#end()            " required
filetype plugin indent on    " required
"  										*-*-*-*-*-*-*-*
"  										*-PLUGINS END-*
"  										*-*-*-*-*-*-*-*
"
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" My configz
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" good themes: base16-atelierdune base16-atelierforest, badwolf, base16-summerfruit, hybrid, onedark
set background=dark
colorscheme onedark
let g:airline_theme="behelit"
syntax on 									" give us some syntax highlighting!
filetype on
filetype plugin on
set number 									" show line numbers
set hlsearch 								" highligh search results
set incsearch 								" shows results as you type the search
set shiftwidth=4
set laststatus=2
set tabstop=4
set t_Co=256								" sets 256 colors onto term
set undofile 								" make undo files
set cindent
set cinoptions+=g0 							" don't indent cpp visibility specifiers
set smartindent
set autoindent
set backspace=indent,eol,start
set cursorline
set scrolloff=6      						" Always show a few lines below and above the current one
set wildmenu         						" Tab completion for the commands
set completeopt=menu 						" Completions in menus
set nowrap           						" Never wrap the text

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" Abbrevs
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
iab reurn return
iab inclue include
iab updaed updated

" make vim remember last cursor position when editing file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" GUI specific settings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
if has('gui_running')
	set autochdir
	set guifont=Terminess\ Powerline\ 11
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip		" files to be ignored when searching

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
let g:cpp_class_scope_highlight = 1 			" enable class scope highlighting
let g:cpp_experimental_template_highlight = 1 	" enable template highlight

" -------------------------------------------------------------------------------------------------
" Settings for python syntax highlighter
" -------------------------------------------------------------------------------------------------
let g:python_version_2 = 1
let g:python_highlight_all = 1
let g:airline_powerline_fonts = 1

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

" additional binds for saving, quiting...
nnoremap <Leader>s    <Esc>:wa<CR>|   			"" Save everything
inoremap <S-Leader>s  <Esc>:wa<CR>
nnoremap <S-Leader>s  <Esc>:wa<CR>

nnoremap <Leader>q    <Esc>:q<CR>|    			"" Quit vim
inoremap <S-Leader>q  <Esc>:q<CR>
nnoremap <S-Leader>q  <Esc>:q<CR>

nnoremap <Leader>x    <Esc>:x<CR>|    			"" Save and quit vim
inoremap <S-Leader>x  <Esc>:x<CR>
nnoremap <S-Leader>x  <Esc>:x<CR>

" reloading vimrc
nnoremap <Leader>rc :source ~/.vimrc<CR>

" This allows vim to jump from header/definiton into defintion/header
" (TODO: Find a suitable plugin for this maybe?)
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
map <Leader><F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

set pastetoggle=<F2>

" turn off highlight for search results
map <Leader>hl :nohlsearch<CR>

" toggle file browser
map <Leader>f :NERDTreeToggle<CR>


" Compiling, checking errors etc.
nnoremap <F5> :w<CR> :make<CR>:! ./dragon<CR>
nnoremap <Leader>c :! make clean<CR>
nnoremap <Leader>e :copen<CR>
"map <Leader>x :clo<CR>
nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cp<CR>

