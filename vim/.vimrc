"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"  set rtp+=~/.vim/bundle/Vundle.vim
 " call vundle#begin()
call plug#begin('~/.vim/plugged')
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plug 'tpope/vim-fugitive'
Plug 'plytophogy/vim-virtualenv'
Plug 'vim-scripts/L9'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
"Plug 'cohama/agit.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
"Plug 'vim-scripts/FuzzyFinder'
Plug 'Yggdroot/indentLine'
"Plug 'mtth/scratch.vim'
"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'mileszs/ack.vim'
"Plug 'godlygeek/csapprox'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'scrooloose/syntastic'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plug 'tacahiroy/ctrlp-funky'
"Plug 'ivalkeen/vim-ctrlp-tjump'
"Plug 'imkmf/ctrlp-branches'
Plug 'altercation/vim-colors-solarized'
"Plug 'python-mode/python-mode'
"Plug 'junegunn/gv.vim'
"Plug 'junegunn/vim-slash'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
"Plug 'junegunn/vim-peekaboo'
"Plug 'gregsexton/gitv'
"Plug 'junkblocker/patchreview-vim'
"Bundle 'codegram/vim-codereview'
"Plug 'fs111/pydoc.vim'
"Plug 'tpope/vim-unimpaired'
"Plug 'lepture/vim-jinja'
"Plug 'romainl/vim-qf'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'andrewstuart/vim-kubernetes'
Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-rhubarb'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-dispatch'
"Plug 'puremourning/vimspector'
"Plug 'pgr0ss/vim-github-url'
"Plug 'benmills/vimux'
"Plug 'sjl/badwolf'
"Plug 'mhinz/vim-startify'
"Plugin 'pseewald/vim-anyfold'
"Plugin 'arecarn/vim-fold-cycle'
"Plug 'sts10/vim-pink-moon'
Plug 'ryanoasis/vim-devicons'
"Plugin 'osyo-manga/vim-hopping'
"Plugin 'tpope/vim-vinegar'
"Plug 'hotwatermorning/auto-git-diff'
"Plug 'tpope/vim-surround'
"Plugin 'guns/vim-sexp'
"Plugin 'tpope/vim-sexp-mappings-for-regular-people'
"Plugin 'Shougo/unite.vim'
"Plugin 'devjoe/vim-codequery'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'zchee/deoplete-jedi'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'mrk21/yaml-vim'
"Plugin 'sodapopcan/vim-twiggy'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'Lenovsky/nuake'
"Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'liuchengxu/vista.vim'
"Plug 'fszymanski/fzf-quickfix'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
"Plug 'liuchengxu/vim-clap'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nhooyr/neoman.vim'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
Plug 'rbong/vim-flog'
"Plug 'lyuts/vim-rtags'
"Plug 'm-pilia/vim-ccls'
"Plug 'wojciechkepka/vim-github-dark'
Plug 'dracula/vim', { 'as': 'dracula' }

"let g:deoplete#enable_at_startup = 1

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
"Plug 'wfxr/minimap.vim'
"
" " All of your Plugins must be added before the following line
"call vundle#end()            " required
call plug#end()
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

"source ~/.vim/bundle/vim-fugitive/plugin/fugitive.vim

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

nmap ,tb :TagbarOpen fj<CR>
nmap ,tc :TagbarClose<CR>

"set grepprg=egrep\ --include='*.go'\ --include='*.py'\ -Hnr
let g:tabman_number = 0

if $ITERM_PROFILE == "Night"
	set background=light
else
	set background=dark
endif

"set background=light
"colo nuvola
"hi comment ctermfg=darkgreen

"set background=light
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
"let g:airline_theme='cobalt2'
"let g:airline_theme='papercolor'
" let g:airline_theme='badwolf'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|swp|pyc)$'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_working_path_mode = "rd"
let g:ctrlp_extensions = [ 'branches']
"let g:airline_left_sep = "\uE0B4"
"let g:airline_right_sep = "\uE0B6"
"let g:airline_section_y = ''
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
"colo PaperColor

" in your plugin constants configuration section
let g:virtualenv_auto_activate = 1

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
nnoremap <C-x>g :Frepo<CR>

autocmd FileType go setlocal noexpandtab
autocmd BufNewFile,BufRead *.go :set grepprg=rg\ --vimgrep\ -t\ go\ -g\ '!tags' 
autocmd BufNewFile,BufRead *.go setlocal noexpandtab
autocmd BufNewFile,BufRead *.py :set grepprg=rg\ --vimgrep\ -t\ py\ -g\ '!tags'
autocmd BufNewFile,BufRead *.go setlocal noexpandtab

autocmd FileType cpp setlocal expandtab sw=4 ts=4
autocmd FileType c setlocal expandtab sw=4 ts=4
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
au FileType javascript set sw=4
au FileType javascript set ts=4
au FileType javascript set et
au FileType html set sw=4
au FileType html set ts=4
au FileType html set et
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
 "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
 "function! s:my_cr_function()
 "    return neocomplete#close_popup() . "\<CR>"
 "endfunction
 " <TAB>: completion.
 "inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
 " <C-h>, <BS>: close popup and delete backword char.
 inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><C-y>  neocomplete#close_popup()
 inoremap <expr><C-e>  neocomplete#cancel_popup()
 
" --------------------------------------------------------------------------------
"  neosnippet
"
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
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
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsUsePythonVersion = 2

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

" ------------------------------------------------------------------------------------------
" Pymode mappings
"
"let g:pymode_doc = 1
"let g:pymode_doc_bind = 'K'
let g:pymode_folding = 0
"let g:pymode_lint_ignore = "W,E501,E302,E722,E303,E203,E305,E231,C901"
"let g:pymode_lint = 0
"let g:pymode_lint_checkers = []
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_completion_bind = '<C-Space>'
"setlocal textwidth=135

" ------------------------------------------------------------------------------------------
" Pydoc mappings
"
let g:pydoc_open_cmd = 'tabnew'
nnoremap <Leader>pd :Pydoc <cword> <CR>

" ------------------------------------------------------------------------------------------
"  color scheme
" 
set t_Co=256
"set background=light
if &background == "dark"
	"colorscheme gruvbox
    "colorscheme onedark
	"colorscheme palenight
	"colorscheme neodark
	"colorscheme CandyPaper
	"colorscheme PaperColor
	"colorscheme pink-moon
	"colorscheme badwolf
	"colorscheme one
    "colorscheme Tomorrow-Night-Bright
	"colo jellybeans
	"hi normal ctermbg=None
    "hi comment ctermfg=darkcyan
	"hi Pmenu ctermfg=lightgray
	"hi PmenuSel ctermfg=yellow
	"hi comment ctermfg=lightgreen
	"let g:airline_theme='soda'
	"let g:airline_theme='jellybeans'
	"let g:airline_theme='one'
	"hi SpecialKey cterm=none  ctermbg=none
	"hi Search ctermbg=darkgray ctermfg=white cterm=None
	"colorscheme PaperColor
	"colo ghdark
	"colo dracula
	"let g:gh_color='soft'
	"let g:airline_theme='onehalfdark'
	colo gruvbox
	let g:airline_theme='base16_gruvbox_dark_hard'
else
	"colo onehalflight
	"color PaperColor
	colo Atelier_DuneLight	
	let g:airline_theme='papercolor'
	"let g:airline_theme='onehalfdark'
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

let  g:tmuxline_theme = 'airline'
"let g:tmuxline_separators = {
"    \ 'left' : '',
"    \ 'left_alt': '',
"   \ 'right' : '',
"   \ 'right_alt' : '',
"   \ 'space' : ' '}

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
   \ 'right' : '',
   \ 'right_alt' : '',
   \ 'space' : ' '}

" ------------------------------------------------------------------------------------------

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* RG
  \ call fzf#vim#grep(
  \   "rg --type-add 'tags:[tT]ags' --type-add 'cs:cscope*' -T cs --type-add 'amk:*.amk' -T tags --column --line-number --no-heading --color=always --smart-case ".<q-args>, 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! GtagsSink(lines)
	let qlines = []
	for line in a:lines
		let items = split(line, ' \+')
		if len(items) > 4 && filereadable(items[2])
			let d = {'filename': items[2], 'lnum': items[1], 'text': substitute(line, '^[^[:space:]]\+[[:space:]]\+[[:digit:]]\+[[:space:]]\+[^[:space:]]\+[[:space:]]\+', '', 'gi')}
			call add(qlines, d)
		endif 
	endfor
	call setqflist(qlines)
	exe ":Quickfix"
endfunction

functio! Gtags(op, symbol)
	let result = systemlist("global -x --color " . a:op . ' ' . a:symbol)
	call GtagsSink(result)
endfunction

function! RipgrepFzf(query, fullscreen)
  let command_fmt = "rg --column --line-number --no-heading --type-add 'tags:[tT]ags' --type-add 'cs:cscope*' -T cs -T tags --color=always --smart-case -- %s || true"
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang R call RipgrepFzf(<q-args>, <bang>0)


command! -complete=tag -nargs=* G call Gtags(<f-args>)

nnoremap <Space>f :Files<CR>
nnoremap t :Tags<CR>
nnoremap <Space>c :Commits<CR>
nnoremap <Space>b :BTags<CR>
nnoremap <Space>r :RG 
nnoremap <D-S-F> :RG<CR>
nnoremap <Space>l :Buffers<CR>
nnoremap <Space>/ :BLines<CR>
nnoremap <Space>g :G 
nnoremap <Bslash>r :Rg 
"
"nnoremap <Space>f :Clap files<CR>
"nnoremap t :Clap tags<CR>
"nnoremap <Space>c :Clap commits<CR>
"nnoremap <Space>b :Clap btags<CR>
"nnoremap <Space>r :Clap grep  
"nnoremap <Space>l :Clap buffers<CR>
"nnoremap <Space>/ :Clap blines<CR>

" ------------------------------------------------------------------------------------------
let g:nerdtree_tabs_autofind = 1
let g:nerdtree_tabs_focus_on_files = 1

nnoremap <Bslash>t :pop<CR>
"source ~/.vim/bundle/vim-go/autoload/go/util.vim

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
"map <Bslash>F :call ToggleFold()<CR>
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

"au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab
map ; :

let g:deoplete#sources#jedi#python_path = "$HOME/hase-dev/bin/python"
let g:python_host_prog = "$HOME/hase-dev/bin/python"
let g:github_enterprise_urls = ['https://github.ibm.com']

"function! SanitizeKubeletLog
"	normal %s/^\[[^\]]\+] \(Mar 12 [0-9:]\+\) crn[^:]\+:[A-Z0-9 \.:]\+/\1 /g
"endfunction
	set termguicolors
	set clipboard+=unnamed
	set undodir=~/.vim/undodir
	set undofile

	nnoremap <F4> :Nuake<CR>
	inoremap <F4> <C-\><C-n>:Nuake<CR>
	tnoremap <F4> <C-\><C-n>:Nuake<CR>

	nmap <Leader>: :History:<CR>
	nmap <Leader>/ :History/<CR>
	nmap <Leader>l :Lines<CR>
	nmap <Leader>w :Windows<CR>

	" Insert mode completion
	imap <c-x><c-k> <plug>(fzf-complete-word)
	imap <c-x><c-f> <plug>(fzf-complete-path)
	imap <c-x><c-j> <plug>(fzf-complete-file-ag)
	imap <c-x><c-l> <plug>(fzf-complete-line)

	" Advanced customization using autoload functions
	inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

	let g:nuake_size = 0.5
	let g:nuake_position = 'right'

	let g:PaperColor_Theme_Options = {
	  \   'language': {
	  \     'python': {
	  \       'highlight_builtins' : 1
	  \     },
	  \     'cpp': {
	  \       'highlight_standard_library': 1
	  \     },
	  \     'c': {
	  \       'highlight_builtins' : 1
	  \     }
	  \   }
	  \ }

	" Disable CTRL-A on tmux or on screen
	if $TERM =~ 'screen' || $TMUX_PANE =~ '.+'
	  nnoremap <C-a> <nop>
	  nnoremap <Leader><C-a> <C-a>
	endif

	nnoremap <Space>a :Dispatch $(git rev-parse --show-toplevel)/main/amake -ni -j -f 
	nnoremap <Space>q :Quickfix<CR>

	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_scope_highlight = 1
	let g:cpp_class_decl_highlight = 1
	let g:cpp_experimental_template_highlight = 1
	let g:cpp_concepts_highlight = 1


	let g:coc_node_path = '/home/linuxbrew/.linuxbrew/bin//node'
	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	function! GetJumps()
	  redir => cout
	  silent jumps
	  redir END
	  return reverse(split(cout, "\n")[1:])
	endfunction
	function! GoToJump(jump)
		let jumpnumber = split(a:jump, '\s\+')[0]
		execute "normal " . jumpnumber . "\<c-o>"
	endfunction
	command! Jumps call fzf#run(fzf#wrap({
			\ 'source': GetJumps(),
			\ 'sink': function('GoToJump')}))
	map <silent> <Space>j :Jumps<CR>

	" --- gutentags
	"" enable gtags module
	let g:gutentags_modules = ['ctags', 'gtags_cscope']

	"" ========== VimPlug ==========
	nn <Leader>clean :PlugClean<CR>
	nn <Leader>install :PlugInstall<CR>
	nn <Leader>update :PlugUpgrade \| PlugUpdate<CR>

	"" ========== Coc.nvim ==========
	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  else
		call CocAction('doHover')
	  endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	let g:coc_config_home = "~/.config/coc"
	let g:coc_global_extensions = [
		\ 'coc-go',
		\ 'coc-sh',
		\ 'coc-css',
		\ 'coc-sql',
		\ 'coc-json',
		\ 'coc-html',
		\ 'coc-python',
		\ 'coc-tsserver',
		\ 'coc-markdownlint',
	\ ]
	nn <Leader>upd :CocUpdate<CR>
	nn <Leader>dis :CocDisable<CR>
	nm <silent> <Leader>cn <Plug>(coc-diagnostic-next)
	nm <silent> <Leader>cp <Plug>(coc-diagnostic-prev)
	nm <silent> <Leader>ch :call CocAction('doHover')<CR>
	nm <silent> <Leader>cd :call CocAction('jumpDefinition','split')<CR>

	"" ========== VimFugitive ==========
	set diffopt+=vertical
	nn <Leader>gd :Gdiff<CR>
	nn <Leader>gb :Gblame<CR>

	"" ========= clangd-format for NPS changes ======
	function! Nzformat() 
		if filereadable(expand("%"))
			let mydir = expand("%:h")
			let top = system("cd " . mydir . " && git rev-parse --show-toplevel")
			if v:shell_error == 0
				let top = trim(top)
			endif
			if v:shell_error == 0 && filereadable(top . "/misc/clang-format/clang-format")
				let err = system(top . "/misc/clang-format/clang-format -style=file -i " . expand("%"))
				if v:shell_error != 0
					echom  "Unable to clang format: " . err
				else
					echom  "Formatted"
				endif
			else
				echom "shell error = " . v:shell_error . ", fl = " . top . "/misc/clang-format/clang-format"
			endif
		else
			echom expand("%") . " unreadable"
		endif
	endfunction

	"" ============ minimap ================ "
	let g:minimap_highlight_range = 1
	nm <silent> <space>m :MinimapToggle<CR>

	"" ===== coc ccls
	" if hidden is not set, TextEdit might fail.
	set hidden

	" Some servers have issues with backup files, see #649
	set nobackup
	set nowritebackup

	" Better display for messages
	set cmdheight=2

	" You will have bad experience for diagnostic messages when it's default 4000.
	set updatetime=300

	" don't give |ins-completion-menu| messages.
	set shortmess+=c

	" always show signcolumns
	set signcolumn=yes

	" Use tab for trigger completion with characters ahead and navigate.
	" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
	"inoremap <silent><expr> <TAB>
	"	  \ pumvisible() ? "\<C-n>" :
	"	  \ <SID>check_back_space() ? "\<TAB>" :
	"	  \ coc#refresh()
	"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
	" Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[c` and `]c` to navigate diagnostics
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  else
		call CocAction('doHover')
	  endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Remap for rename current word
	nmap <leader>rn <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
	"nmap <silent> <TAB> <Plug>(coc-range-select)
	"xmap <silent> <TAB> <Plug>(coc-range-select)
	"xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" use `:OR` for organize import of current buffer
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Map function and class text objects
	" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
	xmap if <Plug>(coc-funcobj-i)
	omap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap af <Plug>(coc-funcobj-a)
	xmap ic <Plug>(coc-classobj-i)
	omap ic <Plug>(coc-classobj-i)
	xmap ac <Plug>(coc-classobj-a)
	omap ac <Plug>(coc-classobj-a)

	" Remap <C-f> and <C-b> for scroll float windows/popups.
	if 1 || has('nvim-0.4.0') || has('patch-8.2.0750')
	  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	endif

	" Add status line support, for integration with other plugin, checkout `:h coc-status`
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Using CocList
	nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
	nnoremap <silent> <space>a       :<C-u>CocFzfList diagnostics<CR>
	nnoremap <silent> <space>b       :<C-u>CocFzfList diagnostics --current-buf<CR>
	nnoremap <silent> <space>c       :<C-u>CocFzfList commands<CR>
	nnoremap <silent> <space>e       :<C-u>CocFzfList extensions<CR>
	nnoremap <silent> <space>o       :<C-u>CocFzfList outline<CR>
	nnoremap <silent> <space>s       :<C-u>CocFzfList symbols<CR>
	nnoremap <silent> <space>p       :<C-u>CocFzfListResume<CR>

	" Gdb
	let g:termdebugger='/home/linuxbrew/.linuxbrew/bin/gdb'
	packadd termdebug
	let g:termdebug_wide=1


	" ccls
	let g:ccls_close_on_jump = v:true

	" grep word under cursor
	command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocFzfList grep '.<q-args>

	function! s:GrepArgs(...)
	  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
			\ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
	  return join(list, "\n")
	endfunction

	" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <space>gg :exe 'CocFzfList -I --input='.expand('<cword>').' grep'<CR>

inoremap <silent><expr> <C-e> coc#pum#visible() ? coc#pum#cancel() : "\<C-e>"
inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
inoremap <silent><expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
inoremap <silent><expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"
inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:termdebug_disasm_window = 0
