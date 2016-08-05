" WHOAMI?
let g:username = "Your Name"
let g:email = "your@email.com"

" Leader button
let mapleader="\<Space>"

" ---------------------------------------------------------------------------------------
" 									Vundle init
" ---------------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" ---------------------------------------------------------------------------------------
" 									** PLUGINS **
" ---------------------------------------------------------------------------------------

" ---------------------------------------------------------------------------------------
" SuperTab plugin -> for handling integration between ultisnip and ycm
" ---------------------------------------------------------------------------------------
Plugin 'ervandew/supertab'

" ---------------------------------------------------------------------------------------
" YouCompleteMe
" ---------------------------------------------------------------------------------------
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
" FileTemplates
" ---------------------------------------------------------------------------------------
Plugin 'aperezdc/vim-template'

" ---------------------------------------------------------------------------------------
" Colorcheme plugins
" ---------------------------------------------------------------------------------------
set background=dark
Plugin 'chriskempson/base16-vim' 			" base16-*
" Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'justinmk/vim-syntax-extra'
Plugin 'w0ng/vim-hybrid'
" ---------------------------------------------------------------------------------------
" Converts GVim themes into terminal colors
" ---------------------------------------------------------------------------------------
Plugin 'vim-scripts/CSApprox'

" ---------------------------------------------------------------------------------------
" Some other stuff...
" ---------------------------------------------------------------------------------------
Plugin 'rdnetto/YCM-Generator'				" YCM flag generator
" Plugin 'scrooloose/syntastic'				" syntastic syntax checker
Plugin 'flazz/vim-colorschemes'				" colorschemes
" Plugin 'easymotion/vim-easymotion'			" easymotion
Plugin 'scrooloose/nerdtree'				" Nerdtree
Plugin 'scrooloose/nerdcommenter'			" Commenting engine
Plugin 'shime/vim-livedown'					" md preview
" Plugin 'ternjs/tern_for_vim'				" tern complete for javascript
Plugin 'vim-airline/vim-airline'			" vim airline statusbar
Plugin 'vim-airline/vim-airline-themes'		" themes for airline
Plugin 'miyakogi/conoline.vim' 				" adds an awesome current line cursor
" Plugin 'Shougo/vimproc'
" Plugin 'Shougo/unite.vim'
" Plugin 'm2mdas/phpcomplete-extended'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight' 	" better synt.col.supp for cpp
Plugin 'hdima/python-syntax' 				" better synt.col.supp. for py
Plugin 'terryma/vim-multiple-cursors' 		" multiple cursors like Sublime Editor
Plugin 'airblade/vim-gitgutter' 			" vim gutter near line numbers

" ---------------------------------------------------------------------------------------
" ULTISNIPS
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" *****************************************************************************

set laststatus=2
let g:airline_theme="behelit"
" *****************************************************************************

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" --------------------------------------------------------------------------------------------
" My configz
" --------------------------------------------------------------------------------------------
" good ones: base16-atelierdune, badwolf, base16-summerfruit, hybrid
colorscheme base16-atelierforest
syntax on
set number
set hlsearch
set incsearch 				" shows results as you type the search
set shiftwidth=4
set tabstop=4
set t_Co=256				" sets 256 colors onto term
set undofile
set cindent
set smartindent
set autoindent
set backspace=indent,eol,start
set cursorline
set scrolloff=6      " Always show a few lines below and above the current one
set wildmenu         " Tab completion for the commands
set completeopt=menu " Completions in menus
set nowrap           " Never wrap the text

" make vim remember last cursor position when editing file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" Status line options
set laststatus=2

" completion popups

" -----------------------------------------------------------------------------
" Files to be ignored
" -----------------------------------------------------------------------------
set wildignore+=*.o,*.obj,build,build-*,.*.swp,.*.swo
set wildignore+=*.pyc,*.class,*.jar,*~
set wildignore+=.git,.svn
set wildignore+=project/target/**,target/**
set wildignore+=GPATH,GRTAGS,GSYMS,GTAGS

" -----------------------------------------------------------------------------
" GUI settings
" -----------------------------------------------------------------------------
if has('gui_running')
	set autochdir
	set guifont=Terminess\ Powerline\ 11
	let &t_SI = "\<Esc>[5 q"
	let &t_EI = "\<Esc>[1 q"
	" good ones: base16-atelierdune, badwolf
	colorscheme base16-atelierforest
endif
" -----------------------------------------------------------------------------

filetype on
filetype plugin on
" --------------------------------------------------------------------------------------------
" Default settings for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" --------------------------------------------------------------------------------------------

" CTRL+P plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip		" files to be ignored

" EASYMOTION settings
" --------------------------------------------------------------------------------------------
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
" --------------------------------------------------------------------------------------------

" Make nerdtree start if no file was specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close nerdtree if it's the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"ino <tab> <c-r>=TriggerSnippet()<cr>
"snor <tab> <esc>i<right><c-r>=TriggerSnippet()<cr>
"imap <C-J> <Plug>snipMateNextOrTrigger :smap <C-J> <Plug>snipMateNextOrTrigger
"let g:snips_trigger_key = '<C-\>'

" make YCM comptaible with ultisnips with supertabs
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

"" CTRL+P fuzzy search
let g:ctrlp_working_path_mode = 'wr'

"" Settings for cpp syntax highlgher
let g:cpp_class_scope_highlight = 1 			" enable class scope highlighting
let g:cpp_experimental_template_highlight = 1 	" enable template highlight

"" Settings for python syntax highlighter
let g:python_version_2 = 1
let g:python_highlight_all = 1
let g:airline_powerline_fonts = 1

" =-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=
" $$ BINDS $$
" -=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-
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
nnoremap <Leader>s    <Esc>:wa<CR>|   "" Save everything
inoremap <S-Leader>s  <Esc>:wa<CR>
nnoremap <S-Leader>s  <Esc>:wa<CR>

nnoremap <Leader>q    <Esc>:q<CR>|    "" Quit vim
inoremap <S-Leader>q  <Esc>:q<CR>
nnoremap <S-Leader>q  <Esc>:q<CR>

nnoremap <Leader>x    <Esc>:x<CR>|    "" Save and quit vim
inoremap <S-Leader>x  <Esc>:x<CR>
nnoremap <S-Leader>x  <Esc>:x<CR>

" reloading vimrc
map <Leader>rc :source ~/.vimrc<CR>


" This allows vim to jump from header/definiton into defintion/header
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
map <Leader><F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F3> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

" self explanatory...
set pastetoggle=<F2>

" turns on pate mode, pastes content of clipboard, turns of paste mode
map <Leader>p <F2> <-o> <C-r>+ <F2>

" turn of highlight
map <Leader>hl :nohlsearch<CR>

map <Leader>f :NERDTreeToggle<CR>
map <Leader>m :w<CR> :make<CR>

" Compiling, checking errors etc.
nnoremap <F5> :w<CR> :make<CR>:! ./dragon<CR>
nnoremap <Leader>c :! make clean<CR>
nnoremap <Leader>e :copen<CR>
 "map <Leader>x :clo<CR>
nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cp<CR>
