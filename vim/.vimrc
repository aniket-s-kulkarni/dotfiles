set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'tpope/vim-fugitive.git'
Plugin 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'Yggdroot/indentLine'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/csapprox'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'imkmf/ctrlp-branches'
Plugin 'altercation/vim-colors-solarized'
Plugin 'python-mode/python-mode'
Plugin 'junegunn/gv.vim'
Plugin 'junegunn/vim-slash'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/vim-peekaboo'
Plugin 'gregsexton/gitv'
"Bundle 'junkblocker/patchreview-vim'
"Bundle 'codegram/vim-codereview'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'lepture/vim-jinja'
Plugin 'romainl/vim-qf'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'andrewstuart/vim-kubernetes'
Plugin 'jremmen/vim-ripgrep'
Plugin 'tpope/vim-rhubarb'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-dispatch'
Plugin 'pgr0ss/vim-github-url'
Plugin 'benmills/vimux'
Plugin 'sjl/badwolf'
Plugin 'mhinz/vim-startify'
Plugin 'pseewald/vim-anyfold'
Plugin 'arecarn/vim-fold-cycle'
Plugin 'sts10/vim-pink-moon'
Plugin 'ryanoasis/vim-devicons'
"Plugin 'osyo-manga/vim-hopping'
"Plugin 'tpope/vim-vinegar'
Plugin 'hotwatermorning/auto-git-diff'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'


" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
set guifont=Roboto\ Mono\ Light\ for\ Powerline\ Semi-Light\ 11
set ts=4
set sw=4
"colo satori

set grepprg=rg\ --vimgrep\ -g\ '!tags'
set laststatus=2

source ~/.vim/bundle/vim-fugitive/plugin/fugitive.vim

nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>
syn on

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }

nmap ,tb :TagbarToggle<CR>

"set grepprg=egrep\ --include='*.go'\ --include='*.py'\ -Hnr
let g:tabman_number = 0

"set background=light
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
"let g:airline_theme='cobalt2'
"let g:airline_theme='papercolor'
let g:airline_theme='badwolf'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|swp|pyc)$'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_working_path_mode = "rd"
let g:ctrlp_extensions = [ 'branches']
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline_section_y = ''
"let g:airline_section_error = ''
"let g:airline_section_warning = ''
let g:airline_skip_empty_sections = 1

let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1

let g:tabman_number = 0

"set background=light
"let g:airline_theme='hybrid'
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlPMixed'
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:ctrlp_working_path_mode = "rc"
"colo radicalgoodspeed
colo PaperColor

" ------------------------------------------------------------------------------------------
"  Set builder if this is kubernetes 
function! KubernetesMake()
	let make = glob("build/run.sh")
	if !empty(make)
		let &makeprg = make . " make"
		let &errorformat = "|| %f:%l:%c %m"
	endif
endfunction

function! CRepo(dir)
	exe "cd " . a:dir
	echomsg "Repository chagned to " . a:dir
endfunction

command! Frepo  call fzf#run({'source':'findrepo ~/ws ~/gocode/src', 'sink':function('CRepo')})
nnoremap <C-x>r :Frepo<CR>

autocmd FileType go setlocal noexpandtab
autocmd BufNewFile,BufRead *.go :set grepprg=rg\ --vimgrep\ -t\ go\ -g\ '!tags' 
autocmd BufNewFile,BufRead *.go setlocal noexpandtab
autocmd BufNewFile,BufRead *.py :set grepprg=rg\ --vimgrep\ -t\ py\ -g\ '!tags'
autocmd BufNewFile,BufRead *.go setlocal noexpandtab
autocmd FileType go :call KubernetesMake()
let laststatus=2

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)u
au FileType go set noet
au FileType go set ts=4
au FileType go set sw=4
au FileType python set et
au FileType python set ts=4
au FileType python set sw=4
set conceallevel=1
let g:indentLine_conceallevel=1
map <F5> :source $HOME/.vimrc<CR>
set list lcs=tab:┊\ 
set mouse=a
set nu

" --------------------------------------------------------------------------------
"  neocomplete
"
 " Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
 " Use neocomplete.
 let g:neocomplete#enable_at_startup = 1
 " Use smartcase.
 let g:neocomplete#enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
 
 " Plugin key-mappings.
 inoremap <expr><C-g>     neocomplete#undo_completion()
 inoremap <expr><C-l>     neocomplete#complete_common_string()
 
 " Recommended key-mappings.
 " <CR>: close popup and save indent.
 inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
 function! s:my_cr_function()
     return neocomplete#close_popup() . "\<CR>"
 endfunction
 " <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
 " <C-h>, <BS>: close popup and delete backword char.
 inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><C-y>  neocomplete#close_popup()
 inoremap <expr><C-e>  neocomplete#cancel_popup()
 
" --------------------------------------------------------------------------------
"  neosnippet
"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

map ,n :NERDTreeFind<CR>
map ,N :NERDTreeClose<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_by_filename = 1
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 2

nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>ft :CtrlPTag<Cr>
nnoremap <Leader>gb :CtrlPBranches<Cr>
nnoremap <Leader>t :CtrlPBufTag<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set hlsearch
hi SpecialKey cterm=none ctermfg=darkgray

" ------------------------------------------------------------------------------------------
" Pymode mappings
"
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_folding = 0
let g:pymode_lint_ignore = "W,E501,E302,E722,E303,E203,E305,E231,C901"
let g:pymode_lint = 0
let g:pymode_lint_checkers = []
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
setlocal textwidth=135

" ------------------------------------------------------------------------------------------
" Pydoc mappings
"
let g:pydoc_open_cmd = 'tabnew'
nnoremap <Leader>pd :Pydoc <cword> <CR>

" ------------------------------------------------------------------------------------------
"  color scheme
" 
set t_Co=256
set background=dark
"set background=light
if &background == "dark"
	"colorscheme gruvbox
	"colorscheme CandyPaper
	colorscheme PaperColor
	"colorscheme pink-moon
	"colorscheme badwolf
	"hi normal ctermbg=None
	"hi comment ctermfg=lightgreen
else
	color solarized
	hi SpecialKey ctermbg=None
	hi normal ctermbg=None
endif

" ------------------------------------------------------------------------------------------
"  fugitive
"
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Gpull<CR>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gB :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" ------------------------------------------------------------------------------------------
"  git-gutter
"
hi GitGutterAdd    ctermbg=lightgreen
hi GitGutterChange ctermbg=lightblue
hi GitGutterDelete ctermbg=red
hi GitGutterChangeDelete ctermbg=magenta

" ------------------------------------------------------------------------------------------
"  Silver searcher
"
if executable('ag')
  " Use ag over grep
  "set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ackprg = 'ag --vimgrep'

  cnoreabbrev Ack Ack!
  nnoremap <Leader>a :Ack!<Space>
  nnoremap <Leader>ag :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif

nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cn<CR>
nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
    else
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

let g:pymode_python = ''

let  g:tmuxline_theme = 'airline'
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}

" ------------------------------------------------------------------------------------------

command! -bang -nargs=* RG
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always -g "!tags" --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nnoremap <C-x><C-f> :Files<CR>
nnoremap <C-x><C-t> :Tags<CR>
nnoremap <C-x><C-c> :Commits<CR>
nnoremap <C-x><C-b> :BTags<CR>
nnoremap <C-x><C-r> :RG 
nnoremap <C-x><C-l> :Buffers<CR>
nnoremap <C-x>/ :BLines<CR>
nnoremap <Bslash>r :Rg 

" ------------------------------------------------------------------------------------------
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_focus_on_files = 1

nnoremap <Bslash>t :pop<CR>
source ~/.vim/bundle/vim-go/autoload/go/util.vim

" ------------------------------------------------------------------------------------------
"  vimux
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR> 
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" ------------------------------------------------------------------------------------------
"  ny-fold
function! ToggleFold()
	let curr = get(b:, "anyfold_activate", 0)
    echomsg "Current fold = " . curr . "; setting = " . !(!!curr)
	let b:anyfold_activate = !(!!curr)
	normal :edit
endfunction
map <Bslash>F :call ToggleFold()<CR>
"autocmd Filetype go let b:anyfold_activate=1	
"autocmd Filetype python let b:anyfold_activate=1	

" ------------------------------------------------------------------------------------------
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

map <C-x><C-e> :vsplit ~/.vimrc<CR>
set nu

" ------------------------------------------------------------------------------------------
"  hopping
nmap <Space>/ <Plug>(hopping-start)

" Keymapping
let g:hopping#keymapping = {
\	"\<C-n>" : "<Over>(hopping-next)",
\	"\<C-p>" : "<Over>(hopping-prev)",
\	"\<C-u>" : "<Over>(scroll-u)",
\	"\<C-d>" : "<Over>(scroll-d)",
\}
